#!/bin/bash

# Function to print usage instructions
usage() {
    echo "Usage: $0 [-g groupname] [-u username] [-p password]"
    exit 1
}

# Parse command-line arguments
while getopts "g:u:p:" opt; do
    case $opt in
        g) GROUPNAME="$OPTARG" ;;
        u) USERNAME="$OPTARG" ;;
        p) PASSWORD="$OPTARG" ;;
        *) usage ;;
    esac
done

# If groupname, username, or password not provided, prompt for them
if [ -z "$GROUPNAME" ]; then
    read -p "Enter MySQL group name: " GROUPNAME
fi

if [ -z "$USERNAME" ]; then
    read -p "Enter MySQL username: " USERNAME
fi


#if [ -z "$PASSWORD" ]; then
#    read -sp "Enter MySQL password: " PASSWORD
#    echo
#fi

#if [ -z "$PASSWORD"]; then
#    PASSWORD="Shout4_${USERNAME}_joY"
#    echo "password set to: $PASSWORD"
#fi

# Load the .env file located one folder up
if [ -f ../.env ]; then
    # Export variables from the .env file
    export $(grep -v '^#' ../.env | xargs)
else
    echo "Warning: .env file not found in the parent directory."
fi

# Ensure that the password is properly escaped
ESCAPED_PASSWORD=$(printf '%s\n' "${PASSWORD}" | sed 's/\$/\\$/g')

DB_NAME="${GROUPNAME}"
USER_DB_NAME="${USERNAME}"

# SQL commands to create the database, user, and grant privileges
SQL_COMMANDS=" 
-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;

-- Grant privileges to the user on the database
GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${USERNAME}'@'localhost';
GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${USERNAME}'@'%';

-- Flush privileges to apply changes
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
    echo "Group '${GROUPNAME}', user '${USERNAME}' and database '${DB_NAME}' created successfully."
else
    echo "Failed to create group '${GROUPNAME}', user '${USERNAME}', or database '${DB_NAME}'. Please check your inputs and try again."
fi
