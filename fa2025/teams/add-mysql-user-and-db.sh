#!/bin/bash

# Function to print usage instructions
usage() {
    echo "Usage: $0 [-u username] [-p password]"
    exit 1
}

# Parse command-line arguments
while getopts "u:p:" opt; do
    case $opt in
        u) USERNAME="$OPTARG" ;;
        p) PASSWORD="$OPTARG" ;;
        *) usage ;;
    esac
done

# If username or password not provided, prompt for them
if [ -z "$USERNAME" ]; then
    read -p "Enter MySQL username: " USERNAME
fi

if [ -z "$PASSWORD" ]; then
    read -sp "Enter MySQL password: " PASSWORD
    echo
fi

# Load the .env file located one folder up
if [ -f ../../.env ]; then
    # Export variables from the .env file
    export $(grep -v '^#' ../../.env | xargs)
else
    echo "Warning: .env file not found in the parent directory."
fi


# Ensure that the password is properly escaped
ESCAPED_PASSWORD=$(printf '%s\n' "${PASSWORD}" | sed 's/\$/\\$/g')

DB_NAME1="${USERNAME}_user"
DB_NAME2="${USERNAME}_hr"

# SQL commands to create a database, user, and grant permissions
SQL_COMMANDS="
-- Check if user exists and create if not
CREATE USER IF NOT EXISTS '${USERNAME}'@'localhost' IDENTIFIED BY '${ESCAPED_PASSWORD}';
CREATE USER IF NOT EXISTS '${USERNAME}'@'%' IDENTIFIED BY '${ESCAPED_PASSWORD}';
-- Create databases
CREATE DATABASE IF NOT EXISTS \`${DB_NAME1}\`;
CREATE DATABASE IF NOT EXISTS \`${DB_NAME2}\`;
-- Grant privileges to the database
GRANT ALL PRIVILEGES ON \`${DB_NAME1}\`.* TO '${USERNAME}'@'localhost';
GRANT ALL PRIVILEGES ON \`${DB_NAME1}\`.* TO '${USERNAME}'@'%';
GRANT ALL PRIVILEGES ON \`${DB_NAME2}\`.* TO '${USERNAME}'@'localhost';
GRANT ALL PRIVILEGES ON \`${DB_NAME2}\`.* TO '${USERNAME}'@'%';
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
    echo "User '${USERNAME}' and '${DB_NAME1} created successfully."
else
    echo "Failed to create user '${USERNAME}'. Please check your inputs and try again."
fi

# Execute the SQL query and display the results
mysql -h ${MYSQL_DB_HOST} -u "${USERNAME}" -p"${ESCAPED_PASSWORD}" ${DB_NAME2} < HR.sql

# Check for success
if [ $? -eq 0 ]; then
    echo "'${DB_NAME2} populated successfully."
else
    echo "FAILED: '${DB_NAME2}' not populated "
fi



