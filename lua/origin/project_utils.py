import os
import yaml
import json


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


def list_files(commit_hash):
    file_path = "/tmp/reviewed.yml"
    reviewed_files = []
    if os.path.exists(file_path):
        with open(file_path, 'r') as f:
            data = yaml.safe_load(f) or {}
            files = data.get(commit_hash, [])
            for file in files:
                reviewed_files.append(file)
    return reviewed_files


if __name__ == '__main__':
    root = find_project_root()
    code_review_ignore_local = os.path.join(root, '.code_review_ignore_local')
    ignore_local = read_ignore_file(code_review_ignore_local) if root else []
    ignore_global = os.path.expanduser(
        '~/.config/nvim/.code_review_ignore_global')
    ignore_global = read_ignore_file(ignore_global)
    print(json.dumps(
        {'root': root, 'ignore_patterns': ignore_local + ignore_global}))
