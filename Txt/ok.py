import sys
import csv
import json

# Get the TSV file path and JSON file path from the command line arguments
tsv_file_path = sys.argv[1]
json_file_path = sys.argv[2]

# Open the TSV file and read its contents
with open(tsv_file_path, "r", encoding='utf8') as tsv_file:
    reader = csv.DictReader(tsv_file, delimiter="\t")
    # Convert each row to a dictionary and add it to a list
    rows = []
    for row in reader:
        new_row = {}
        for k, v in row.items():
            try:
                new_row[k] = int(float(v))
            except ValueError:
                new_row[k] = v
        rows.append(new_row)

# Write the list of dictionaries to a JSON file
with open(json_file_path, "w", encoding='utf8') as json_file:
    json.dump(rows, json_file, ensure_ascii=False, indent=4)
