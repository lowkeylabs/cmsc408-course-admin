#!/bin/bash

# Function to print usage instructions
usage() {
    echo "Usage: $0 [-u username] [-d database_to_add"
    exit 1
}

# Parse command-line arguments
while getopts "u:d:" opt; do
    case $opt in
        u) USERNAME="$OPTARG" ;;
        d) DB_NAME1="$OPTARG" ;;
        *) usage ;;
    esac
done

# If username or password not provided, prompt for them
if [ -z "$USERNAME" ]; then
    read -p "Enter MySQL username: " USERNAME
fi

if [ -z "$DB_NAME1" ]; then
    read -p "Enter database to create: " DB_NAME1
    echo
fi

# Load the .env file located one folder up
if [ -f ../../.env ]; then
    # Export variables from the .env file
    export $(grep -v '^#' ../../.env | xargs)
else
    echo "Warning: .env file not found in the parent directory."
fi

# SQL commands to create a database, user, and grant permissions
SQL_COMMANDS="
-- Create databases
CREATE DATABASE IF NOT EXISTS \`${DB_NAME1}\`;
-- Grant privileges to the database
GRANT ALL PRIVILEGES ON \`${DB_NAME1}\`.* TO '${USERNAME}'@'localhost';
GRANT ALL PRIVILEGES ON \`${DB_NAME1}\`.* TO '${USERNAME}'@'%';
FLUSH PRIVILEGES;
"


# Check if MYSQL_DB_HOST is set
if [ -z "$MYSQL_DB_HOST" ]; then
    MYSQL_DB_HOST="127.0.0.1"
fi


# Execute the SQL query and display the results
mysql -h ${MYSQL_DB_HOST} -u "${MYSQL_ROOT_USER}" -p"${MYSQL_ROOT_PASSWORD}" -e "${SQL_COMMANDS}"

# Check for success
if [ $? -eq 0 ]; then
    echo "${DB_NAME1} created successfully."
else
    echo "FAILED: '${DB_NAME1}' not created."
fi
