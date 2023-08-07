from git import Repo
import yaml
import sys
import os


def add_file(commit_hash, file_name):
    file_path = "/tmp/reviewed.yml"
    data = {}
    if os.path.exists(file_path):
        with open(file_path, 'r') as f:
            data = yaml.safe_load(f) or {}

    if commit_hash not in data:
        data[commit_hash] = []

    if file_name not in data[commit_hash]:
        data[commit_hash].append(file_name)

    with open(file_path, 'w') as f:
        yaml.safe_dump(data, f)


def is_reviewed_file(file_name) -> bool:
    repo = Repo('.', search_parent_directories=True)

    # ファイルの最新のコミットハッシュを取得
    commit_hash = repo.git.log('-n', '1', '--pretty=format:%H', '--', file_name).strip()
    file_path = "/tmp/reviewed.yml"
    if os.path.exists(file_path):
        with open(file_path, 'r') as f:
            data = yaml.safe_load(f) or {}

        # コミットハッシュ以下のファイルリストを取得
        files = data.get(commit_hash, [])

        # ファイル名がリストに存在するかどうかを確認
        return file_name in files

    return False


if __name__ == "__main__":
    action = sys.argv[1]
    if action == "add":
        add_file(sys.argv[2], sys.argv[3])
    elif action == "list":
        result = is_reviewed_file(sys.argv[2])
        print(result)
