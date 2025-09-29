import json
import csv

# Input and output files
INPUT_FILE = "fa2025-enrollments.json"

def main():
    # Load JSON file
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
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
            print(f"./add-mysql-user-and-db.sh -u fa25_{login_id} -p Shout4_{login_id}_joY")

if __name__ == "__main__":
    main()
    