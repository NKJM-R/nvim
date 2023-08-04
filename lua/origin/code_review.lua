local M = {}

local function get_project_info()
  local config_dir = vim.fn.stdpath('config')
  local f = assert(io.popen('python3 ' .. config_dir .. '/lua/origin/project_utils.py', 'r'))
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
  while file do
    vim.api.nvim_command('edit ' .. project_info.root .. '/' .. file)
    file = git_diff:read('*l')
  end
  git_diff:close()
end

return M
