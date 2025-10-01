#!/usr/bin/python

import csv
import json
import click
from string import Template
from loguru import logger


# Input and output files
DEFAULT_INPUT_FILE = "fa2025-enrollments.json"
DEFAULT_TERM_ID = "fa25"



def add_user_and_initial_databases( input_user_file = DEFAULT_INPUT_FILE, term_id = DEFAULT_TERM_ID , password_template = "Shout4_{login_id}_joY" ):
    logger.info( password_template )
    with open(input_user_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    used = []
    for enrollment in data.values():
        login_id = enrollment.get("user", {}).get("login_id", "")
        name = enrollment.get("user", {}).get("name", "")
        role = enrollment.get("role", "")
        if name=="Test Student":
            continue
        if login_id in used:
            continue
        if role in ["DesignerEnrollment","StudentEnrollment","TeacherEnrollment","TaEnrollment"]:
            used.append( login_id )

            pwt = Template(password_template)
            password = pwt.substitute(login_id=login_id, term_id=term_id)

            print(f"./add-mysql-user-and-db.sh -u {term_id}_{login_id} -p {password}")

def add_database_to_users( input_user_file = DEFAULT_INPUT_FILE, term_id = DEFAULT_TERM_ID, database_name = "hw5" ):
    with open(input_user_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    used = []
    for enrollment in data.values():
        login_id = enrollment.get("user", {}).get("login_id", "")
        name = enrollment.get("user", {}).get("name", "")
        role = enrollment.get("role", "")
        if name=="Test Student":
            continue
        if login_id in used:
            continue
        if role in ["DesignerEnrollment","StudentEnrollment","TeacherEnrollment","TaEnrollment"]:
            used.append( login_id )
            print(f"./add-mysql-db-to-user.sh -u {term_id}_{login_id} -d {term_id}_{login_id}_{database_name}")


@click.group()
@click.option(
    "--log-level",
    default="INFO",
    show_default=True,
    help="Set logging level (DEBUG, INFO, WARNING, ERROR).",
)
def cli(log_level):
    """CLI for managing MySQL users and databases from enrollment JSON."""
    logger.remove()  # remove default handler
    logger.add(
        sink=lambda msg: click.echo(msg, nl=False),
        level=log_level.upper(),
        format="<green>{time:YYYY-MM-DD HH:mm:ss}</green> | "
               "<level>{level: <8}</level> | "
               "<cyan>{message}</cyan>",
    )
    logger.info(f"Logger initialized at {log_level.upper()}")


@cli.command("new-users")
@click.option(
    "--input-user-file",
    default=DEFAULT_INPUT_FILE,
    show_default=True,
    help="Path to enrollment JSON file.",
)
@click.option(
    "--term-id",
    default=DEFAULT_TERM_ID,
    show_default=True,
    help="Academic term identifier.",
)
@click.option(
    "--password-template",
    default="Shout4_${login_id}_joY",
    show_default=True,
    help="Template for user passwords (use ${login_id} and/or ${term_id}).",
)
def new_users(input_user_file, term_id, password_template):
    """Create new MySQL users and initial databases."""
    logger.info( password_template )
    add_user_and_initial_databases(input_user_file, term_id, password_template=password_template)


@cli.command("add-homework-db")
@click.option(
    "--input-user-file",
    default=DEFAULT_INPUT_FILE,
    show_default=True,
    help="Path to enrollment JSON file.",
)
@click.option(
    "--term-id",
    default=DEFAULT_TERM_ID,
    show_default=True,
    help="Academic term identifier.",
)
@click.option(
    "--homework-db",
    required=True,
    help="Name of the homework database to add.",
)
def add_homework_db(input_user_file, term_id, homework_db):
    """Add a homework database to existing users."""
    add_database_to_users(input_user_file, term_id, homework_db)


if __name__ == "__main__":
    cli()