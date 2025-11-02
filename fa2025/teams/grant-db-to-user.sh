#!/bin/bash
#
# grant-db-to-user.sh
# Grants all privileges on a specific MySQL database to an existing user.
#

usage() {
    echo "Usage: $0 -u <username> -d <database>"
    exit 1
}

# Parse command-line arguments
while getopts "u:d:" opt; do
    case $opt in
        u) USERNAME="$OPTARG" ;;
        d) DB_NAME="$OPTARG" ;;
        *) usage ;;
    esac
done

# Prompt interactively if not provided
if [ -z "$USERNAME" ]; then
    read -p "Enter MySQL username: " USERNAME
fi

if [ -z "$DB_NAME" ]; then
    read -p "Enter database name: " DB_NAME
fi

# Load .env one folder up (like in your other script)
if [ -f ../../.env ]; then
    export $(grep -v '^#' ../../.env | xargs)
else
    echo "Warning: .env file not found in the parent directory."
fi

# Default host if not provided
if [ -z "$MYSQL_DB_HOST" ]; then
    MYSQL_DB_HOST="127.0.0.1"
fi

# Step 1: Verify that the database exists
CHECK_DB=$(mysql -h "${MYSQL_DB_HOST}" -u "${MYSQL_ROOT_USER}" -p"${MYSQL_ROOT_PASSWORD}" \
    -sse "SHOW DATABASES LIKE '${DB_NAME}';")

if [ -z "$CHECK_DB" ]; then
    echo "❌ Database '${DB_NAME}' does not exist."
    exit 1
fi

# Step 2: Verify that the user exists
CHECK_USER=$(mysql -h "${MYSQL_DB_HOST}" -u "${MYSQL_ROOT_USER}" -p"${MYSQL_ROOT_PASSWORD}" \
    -sse "SELECT COUNT(*) FROM mysql.user WHERE user='${USERNAME}';")

if [ "$CHECK_USER" -eq 0 ]; then
    echo "❌ User '${USERNAME}' does not exist."
    exit 1
fi

# Step 3: Grant privileges
SQL_COMMANDS="
GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${USERNAME}'@'localhost';
GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${USERNAME}'@'%';
FLUSH PRIVILEGES;
"

echo "🔐 Granting privileges to user '${USERNAME}' on database '${DB_NAME}'..."

mysql -h "${MYSQL_DB_HOST}" -u "${MYSQL_ROOT_USER}" -p"${MYSQL_ROOT_PASSWORD}" -e "${SQL_COMMANDS}"

if [ $? -eq 0 ]; then
    echo "✅ Successfully granted all privileges on '${DB_NAME}' to '${USERNAME}'."
else
    echo "❌ Failed to grant privileges on '${DB_NAME}' to '${USERNAME}'."
    exit 1
fi
