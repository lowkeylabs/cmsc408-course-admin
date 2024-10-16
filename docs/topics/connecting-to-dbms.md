# Connecting to DBMS


# Connecting to DBMS

## Connecting to DBMS

<div class="columns">

<div class="column" width="50%">

### Overview of the assignment

- We’re using mysql DBMS.
- There are multiple ways to connect
- Lots of tools to install

*Each approach is handy for one aspect of development. You need to use
all the ways!*

</div>

<div class="column" width="50%">

### Ways to connect

1.  phpMyAdmin - via the web
2.  ssh - to a linux terminal
3.  vscode - using SQLTools extension
4.  python - using a connection

</div>

</div>

## Connecting to DBMS

<div class="columns">

<div class="column" width="50%">

### 1. phpmyadmin

- <http://cmcs508.com/phpmyadmin>
  <p>
   
  </p>
- Username: 24fa\_(eid)
  <p>
   
  </p>

  - for example: 24fa_jdleonard
    <p>
     
    </p>
- Password: Shout4\_<eid>\_JOY
  <p>
   
  </p>

  - for example, Shout4_jdleonard_JOY
    <p>
     
    </p>
    *This approach is most useful for managing the DBMS but NOT very
    useful for development.*

</div>

<div class="column" width="50%">

### 2. SSH to the server

- Open a terminal window on your local machine.

- Enter these commands on your terminal.

``` sql
ssh 24fa_jdleonard@cmsc508.com
password: <your EID goes here>

mysql -p
password: <your Shout4 JOY password>
```

<p>
 
</p>

*This is the quickest and most efficient approach for directly managing
the DBMS but not very useful for development.*

</div>

</div>

## Connecting to DBMS

<div class="columns">

<div class="column" width="50%">

### 3. Visual Studio Code

- Install:

  - SQLTOOLS extension
  - SQLTOOLS mysql connector

- You should see a DB icon on the left

- See the connection screen!

<p>
 
</p>

*This approach is most useful for directly building and coding SQL code.
Lots of cutting and pasting commands through an DB window.*

</div>

<div class="column" width="50%">

![](assets/L13-vscode-db-connect.png)

</div>

</div>

## Connecting to DBMS

<div class="columns">

<div class="column" width="40%">

### 4. Python code

- Clone your homework repository

- Install pyenv, poetry, quarto

- Install libraries - different ways

  - Auto: using poetry
  - Manually using pip
  - matplotlib jupyter plotly
  - python-dotenv sqlalchemy pymysql

- Create a .env file

- Create your python code

</div>

<div class="column" width="60%">

### See explorer.qmd for details!

``` python
import os
import pandas as pd
from dotenv import load_dotenv
from sqlalchemy import create_engine,text
# load credentials from .env file
load_dotenv()
# store these credentials a dictionary for later reference
config = {
  'user': os.getenv("HW5_USER"),
  'password': os.getenv("HW5_PASSWORD"),
  'host': os.getenv("HW5_HOST"),
  'database': os.getenv("HW5_DB_NAME")
}
engine_uri = f"mysql+pymysql://{config['user']}:{config['password']}@{config['host']}/{config['database']}"

# create a database connection.  THIS IS THE ACTUAL CONNECTION!
cnx = create_engine(engine_uri)
```

<p>
 
</p>

*This approach is most useful for developing the wrapper application
around the SQL code.*

</div>

</div>
