local M = {}

local function get_project_info()
  local config_dir = vim.fn.stdpath('config')
  local commit_hash = vim.fn.system("git rev-parse HEAD"):gsub("\n", "") -- 現在のコミットハッシュを取得
  local f = assert(io.popen('python3 ' .. config_dir .. '/lua/origin/project_utils.py ' .. commit_hash, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  return vim.fn.json_decode(s)
end

function M.open_diff_files(branch)
  branch = branch or 'master'

  local project_info = get_project_info()
  if project_info.root == vim.NIL then
    print('Gitプロジェクトルートが見つかりませんでした')
    return
  end

  local ignore_patterns = project_info.ignore_patterns
  if #ignore_patterns == 0 then
    ignore_patterns = { '' }
  end
  local ignore_option = ' -- :"!' .. table.concat(ignore_patterns, '" :"!') .. '"'

  local command = 'git diff --name-only ' .. branch .. ignore_option

  local git_diff = assert(io.popen(command, 'r'))
  local file = git_diff:read('*l')
  local config_dir = vim.fn.stdpath('config')
  while file do
    local cmd = string.format("python3 " .. config_dir .. "/lua/origin/review_manage.py list %s", file)
    local is_reviewed = vim.fn.system(cmd):gsub("\n", "")
    if is_reviewed == "True" then return end
    vim.api.nvim_command('edit ' .. project_info.root .. '/' .. file)
    file = git_diff:read('*l')
  end
  git_diff:close()
end

function M.append_reviewed_file()
  local config_dir = vim.fn.stdpath('config')

  local absolute_path = vim.fn.expand('%:p')

  -- ".git//" の後ろから二つ目の "/" の後ろ部分を取得
  local pattern = ".git//([^/]*)/(.+)$"

  local file_commit_hash, relative_path = absolute_path:match(pattern)

  if not file_commit_hash or not relative_path then
    vim.cmd("echo 'Commit hash or relative path not found'")
    return
  end

  vim.fn.system(string.format("python3 /tmp/reviewed_manager.py add %s %s", file_commit_hash, relative_path))

  vim.fn.system(string.format("python3 " .. config_dir .. "/lua/origin/review_manage.py add %s %s", file_commit_hash,
    relative_path))
end

function M.get_reviewd_files()
  local commit_hash = vim.fn.system("git rev-parse HEAD"):gsub("\n", "") -- 現在のコミットハッシュを取得
  local config_dir = vim.fn.stdpath('config')
  local files = vim.fn.systemlist(string.format("python3 " .. config_dir .. "/lua/origin/review_manage.py list %s",
    commit_hash))
  for _, file in ipairs(files) do
    vim.cmd("echo '" .. file .. "'")
  end
end

return M
