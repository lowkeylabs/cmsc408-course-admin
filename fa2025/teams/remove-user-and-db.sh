#!/bin/bash

# Function to print usage instructions
usage() {
    echo "Usage: $0 [-u username]"
    exit 1
}

# Parse command-line arguments
while getopts "u:" opt; do
    case $opt in
        u) USERNAME="$OPTARG" ;;
        *) usage ;;
    esac
done

# If username is not provided, prompt for it
if [ -z "$USERNAME" ]; then
    read -p "Enter MySQL username to remove: " USERNAME
fi

# Load the .env file located one folder up
if [ -f ../.env ]; then
    # Export variables from the .env file
    export $(grep -v '^#' ../.env | xargs)
else
    echo "Warning: .env file not found in the parent directory."
fi

# SQL commands to drop the user
SQL_COMMANDS="
DROP USER IF EXISTS '${USERNAME}'@'localhost';
DROP USER IF EXISTS '${USERNAME}'@'%';
FLUSH PRIVILEGES;
DROP DATABASE IF EXISTS ${USERNAME}_user;
DROP DATABASE IF EXISTS ${USERNAME}_hr;
"

# Check if MYSQL_DB_HOST is set
if [ -z "$MYSQL_DB_HOST" ]; then
    MYSQL_DB_HOST="127.0.0.1"
fi


# Execute the SQL query and display the results
mysql -h ${MYSQL_DB_HOST} -u root -p"${MYSQL_ROOT_PASSWORD}" -e "${SQL_COMMANDS}"


# Check for success
if [ $? -eq 0 ]; then
    echo "User '${USERNAME}' removed successfully."
else
    echo "Failed to remove user '${USERNAME}'. Please check your inputs and try again."
fi

