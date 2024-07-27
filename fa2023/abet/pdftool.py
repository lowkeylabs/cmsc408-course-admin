"""
"""

## pip install pymupdf

import click
import fitz
from loguru import logger
from pptx import Presentation
from io import BytesIO



@click.group()
def pdftool():
    pass



@pdftool.command()
@click.argument('input_files', type=click.Path(exists=True), nargs=-1, required=True)
@click.option('--output', type=click.Path(), help='Output PDF file')
def combine_pdf(input_files, output):
    """Combine multiple PDF files into one."""
    # Create a new PDF document to combine the input files
    output_pdf_doc = fitz.open()

    # Add pages from each input PDF to the new document
    for input_file in input_files:
        output_pdf_doc.insert_pdf( fitz.open(input_file),from_page=0, to_page=-1,
                                  show_progress=True, final=True )

    # Save the combined PDF to the specified output file
    output_pdf_doc.save(output)

    # Close the output PDF document
    output_pdf_doc.close()

@pdftool.command()
@click.argument('input_file', type=click.Path(exists=True))
@click.option('--output', type=click.Path())
def two_per_page(input_file, output):
    """This script combines two pages of INPUT_FILE into one page and saves the result to OUTPUT_FILE."""
    
    logger.info(f'Starting to process {input_file}...')
    
    try:
        # Open the existing PDF
        doc = fitz.open(input_file)
    except Exception as e:
        logger.error(f"Failed to open the input file: {e}")
        return

    # Create a new PDF
    new_doc = fitz.open()

    for i in range(0, len(doc), 2):
        # Create a new page with double the height of the original
        rect = fitz.Rect(0, 0, doc[0].rect.width, doc[0].rect.height * 2)
        page = new_doc.new_page(width=rect.width, height=rect.height)
        
        # Get the current and next page (if it exists)
        curr_page = doc[i]
        next_page = doc[i+1] if i+1 < len(doc) else None

        # Define the margin and border width
        margin = 30
        border_width = 2

        # Create rectangles for the top and bottom halves of the new page
        top_half = fitz.Rect(margin, margin, doc[0].rect.width - margin, doc[0].rect.height - margin)
        bottom_half = fitz.Rect(margin, doc[0].rect.height + margin, doc[0].rect.width - margin, doc[0].rect.height * 2 - margin)

        # Insert the image of the current page at the top of the new page
        img = curr_page.get_pixmap()
        page.insert_image(top_half, pixmap=img)

        # Draw border around the top half
        page.draw_rect(top_half, color=(0, 0, 0), width=border_width)

        # Insert header and footer for top half
        header_text = "CMSC508 - Fall 2023"
        # Now we insert the text at the correct position for right alignment
        adjustment = fitz.get_text_length(header_text, fontname='helv', fontsize=22)
#        adjustment = 30
#        page.insert_text((doc[0].rect.width - adjustment - margin, margin - 3), header_text, fontsize=22)
        page.insert_text((doc[0].rect.width/2 - adjustment/2, margin - 3), header_text, fontsize=22)

        ##page.insert_text((margin, doc[0].rect.height - 5), "Footer", fontsize=12)

        # If there is a next page, insert the image of it at the bottom of the new page
        if next_page:
            img = next_page.get_pixmap()
            page.insert_image(bottom_half, pixmap=img)

            # Draw border around the bottom half
            page.draw_rect(bottom_half, color=(0, 0, 0), width=border_width)

            # Insert header and footer for bottom half
           ## page.insert_text((margin, doc[0].rect.height + margin - 15), "Header", fontsize=12)
            ##page.insert_text((margin, doc[0].rect.height * 2 - 5), "Footer", fontsize=12)

        logger.info(f'Processed page {i+1}...')
    
    try:
        # Save the new PDF
        new_doc.save(output)
    except Exception as e:
        logger.error(f"Failed to save the output file: {e}")
        return

    logger.info(f'Successfully saved the processed file to {output}')

if __name__ == '__main__':
    pdftool()