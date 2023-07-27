import os
import json
import sys


def find_project_root():
    current_dir = os.getcwd()
    while current_dir != '/':
        if os.path.exists(os.path.join(current_dir, '.git')):
            return current_dir
        current_dir = os.path.dirname(current_dir)
    return None


def read_ignore_file(file_path):
    if os.path.exists(file_path):
        with open(file_path) as f:
            ignores = list(set([line.strip()
                           for line in f.readlines() if line.strip()]))
        return ignores
    return []


if __name__ == '__main__':
    root = find_project_root()
    ignore_local = read_ignore_file(os.path.join(
        root, '.code_review_ignore_local')) if root else []
    ignore_global = read_ignore_file(os.path.expanduser(
        '~/.config/nvim/.code_review_ignore_global'))
    print(json.dumps(
        {'root': root, 'ignore_patterns': ignore_local + ignore_global}))
