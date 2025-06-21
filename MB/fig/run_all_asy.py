import subprocess
import os
from pathlib import Path

def run_asy_on_file(file_path):
    try:
        result = subprocess.run(
            ["asy", str(file_path)],
            capture_output=True,
            text=True,
            check=True
        )
        return None  # No error
    except subprocess.CalledProcessError as e:
        return e.stderr.strip()

def main():
    root = Path(".")
    asy_files = list(root.rglob("*.asy"))
    
    errors = {}

    for file in asy_files:
        error = run_asy_on_file(file)
        if error:
            errors[file] = error

    print(f"Finished running asy on {len(asy_files)} file(s).")
    if errors:
        print(f"{len(errors)} file(s) had errors:")
        for file, err in errors.items():
            print(f"\n--- {file} ---\n{err}")

if __name__ == "__main__":
    main()

