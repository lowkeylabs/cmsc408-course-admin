"""
"""
import os
import re
import sys
import json
import gspread
import shutil
import datetime
from oauth2client.service_account import ServiceAccountCredentials
import pandas as pd
#import numpy as np
from loguru import logger

from cnvsapi.config import config

##

spreadsheet_key = "1zZWIITUV6Sf8nlgY7HFbPhMo3yDXhP2T0OrT1Yqdhho"  # from google drive.  Expects tab named "Outline"
canvas_course_id = 93957 # canvas course ID
template_qmd_file = "../topics/_lecture_template.qmd"
debug_level = "DEBUG"

##

logger.remove()  # Remove any existing handlers
logger.add(sys.stdout, level=debug_level)

# define scope
scope = ['https://spreadsheets.google.com/feeds', 'https://www.googleapis.com/auth/drive']

def getClient():
    """ return hardcoded client. Get more crazy if you want. """
    # create credentials object
    credential_file = os.path.join(os.path.expanduser("~"), ".gsecrets", "gsheets-credentials.json")
    if not os.path.isfile( credential_file ):
      print("Missing credential file:",credential_file)
      sys.exit()

    with open(credential_file, 'r') as f:
      # Load the JSON data from the file into a Python object
      data = json.load(f)

    # authorize the client
    creds = ServiceAccountCredentials.from_json_keyfile_name(credential_file, scope)
    client = gspread.authorize(creds)

    return client

def reformat_date(date_str):
    """ takes a date string line like "1/9" and returns with leading 0 like "01/09".
    Totally necessary for proper sorting and searching of dates.
    """
    [mon,day] = date_str.split("/")
    return f"{int(mon):02d}/{int(day):02d}"

def load_course_outline():
    """ load course outline tab and return a dataframe """
    client = getClient()

    outline = client.open_by_key(spreadsheet_key).worksheet("Outline").get_all_values()
    outline = outline[3:len(outline)]
    outline_df = pd.DataFrame( outline[1:],columns=outline[0])
    logger.debug(outline_df)
    return outline_df

def load_course_summary():
    """Load course summary tab and return a data frame."""
    worksheet_name = "Course Summary"
    client = getClient()
    sheet = client.open_by_key(spreadsheet_key).worksheet(worksheet_name)
    all_rows = sheet.get_all_values()
    all_rows = all_rows[3:len(all_rows)]

    df = pd.DataFrame(all_rows, columns=["Module","Week","Date","Day","Lectures/Quizzes","Deliverables/Notes"])
    df = df.reset_index(drop=True)
    return df

def retry_loop( max_retries, func ):
    """ Try/catch the load for three times """
    for retry in range(max_retries):
        try:
            result = func()  # Call the provided function
            return result    # Return the result if successful
        except Exception as e:
            logger.debug(f"Attempt {retry + 1} failed: {e}")
    
    logger.fatal("All attempts failed. Returning None.")
    return None
#    sys.exit(1)

def load_calendar( lecture_id, n_rows = 8 ):
    """ load course outline, use this to pull n_rows starting with lecture_id from course summary """

    outline_df = retry_loop( 3, load_course_outline)
    logger.debug(f"outline_df: {outline_df}")
    lecture_date = reformat_date( outline_df[outline_df['Lecture ID']==str(lecture_id)]["Date"].to_list()[0] )

    df = retry_loop( 3, load_course_summary )

    cmp = df["Date"].apply(reformat_date)

    df = df[ cmp>=lecture_date ].head( n_rows )
    return df

def extract_lectures():
    """ load course outline and extract lecture content """
    def to_int( s ):
        return None if s=='' else int(s)
    
    outline_df = load_course_outline()
    lecture_df = outline_df[outline_df['Lecture ID'].apply(to_int)>0]
    return lecture_df


def upcoming_calendar( lecture_id, n_rows=8 ):
    """ return snip from upcoming calendar.
    startWeek - the beginning week,
    nRows the number of rows to select.
    """
   
    # Load calendar from google sheets and select the appropriate rows.
    table = load_calendar( lecture_id, n_rows )

    table_text = tabulate(
            table, 
            headers=["Module","Week","Date","Day","Lectures/Quizzes","Deliverables/Notes"],
            tablefmt="html",
            showindex=False,
            colalign=('center','center','center','center','left','left')
            )
    table_style = """
    <style></style>
    """
    table_html = f"{table_style}<div class='upcoming-calendar'>{table_text}</div>"
    # Display the styled table
    text = display(HTML(table_html))
    return text

def add_lecture_file_names( lecture_df ):
    """ Add lecture filename column to data frame"""
    def clean_title( s ):
        s = s.replace(' ', '-')
        s = re.sub(r'[^\w\s-]', '-', s)
        s = re.sub(r'-+', '-', s)
        return s.lower().rstrip("-")
    lecture_df["basename"] = "lecture-" + lecture_df["Lecture ID"].apply( lambda x:f"{int(x):02d}")
#    lecture_df["filename"] = lecture_df["basename"] + "-" + lecture_df["Lecture Title / Topics"].apply( clean_title ) + ".qmd"
    lecture_df["filename"] = lecture_df["basename"] + ".qmd"
    return lecture_df

def get_lecture_df():
    return add_lecture_file_names( extract_lectures())

def create_qmd_file( filename ):
    logger.info(f"Creating file: {filename}")
    shutil.copy(template_qmd_file, filename)

def rename_qmd_file( oldname, filename ):
    logger.info(f"renaming from {oldname} to {filename}")
    os.rename( oldname, filename )

def sync_yaml_header( filename, row ):
    logger.info(f"syncing yaml header for: {filename}")
    # Load the file with front matter
    with open(filename, "r",encoding='utf-8') as file:
        content = frontmatter.loads(file.read())

    # Update the variables in the YAML header
    content['title'] = row['Lecture Title / Topics']
    content['lecture-id'] = int(row['Lecture ID'])
    content['date'] = row["Date"] + "/" + str(datetime.datetime.now().year)

    logger.debug(f"{content['title']} :: {content['lecture-id']} :: {content['date']}")

    content.content = re.sub(r'lecture_id = \d+',rf"lecture_id = {content['lecture-id']}",content.content)

    # Write the updated content back to the file
    with open(filename, "w", encoding='utf-8') as file:
        file.write(frontmatter.dumps(content))

def sync_canvas( row ):
    """ sync canvas lectures with lecture slides """
    logger.info(f"Syncing file to canvas lecture names. Lecture: {row['Lecture ID']}")
    logger.debug(f"course id: {config.course_id}")
    logger.debug(f"{config.config("course").keys()}")
    if not config.course_id in config.config["course"].keys():
        config.config["course"][str(config.course_id)] = {}
    config.config["course"][str(config.course_id)]["pages_slideframe_root"] = "https://lowkeylabs.github.io/cmsc508-fa2023-admin/"
    pages = config.config["course"][str(config.course_id)]["pages"]
    for page in pages.keys():
        fields = page.lower().split("-")
        if row['Lecture ID']==str(fields[1]) and fields[0]=="lecture" and fields[2]=="slides":
            print(f"{os.path.splitext(row['filename'])[0]} :: {page}")
            pages[page]["slideframe"] = config.config["course"][str(config.course_id)]["pages_slideframe_root"]+os.path.splitext(row['filename'])[0]+".html"
    config.save()


def sync_files_and_lectures_and_canvas():
    # load lecture data frame
    logger.info(f"config file: {config.config_file_name}" )
    ## Get lectures from google sheet outline.
    lecture_df = get_lecture_df()
    print(lecture_df)
    # Get a list of all filenames in the directory that match 
    lecture_files = [filename for filename in os.listdir(".") if os.path.isfile(filename) and re.match("lecture-\d\d", filename) and os.path.splitext(filename)[1]==".qmd" ]
    logger.debug( lecture_files )
    # merge old_lecture_file names into data frame
    lecture_df["oldname"] = None
    for filename in lecture_files:
        base = os.path.splitext( filename )[0]
        lecture_df.loc[lecture_df["basename"] == base, "oldname"] = filename
    # at this stage, we've got old and new filenames, or missing files. Loop and update
    logger.debug(lecture_df[["filename","oldname"]])
    for index,row in lecture_df.iterrows():
        if row['oldname'] is None:
            create_qmd_file( row['filename'])
        elif row["oldname"]==row["filename"]:
            pass
        else:
            rename_qmd_file(row['oldname'],row['filename'])
        sync_yaml_header( row['filename'],row )
        sync_canvas( row )
    return 0




if __name__=="__main__":
    sync_files_and_lectures_and_canvas()
