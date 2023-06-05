local CustomVisualCommand = {}

function CustomVisualCommand.target_find_from_files()
  local target = vim.fn.getreg('"')
  vim.api.nvim_command("Files")
  vim.api.nvim_put({target}, 'c', true, true)
end

function CustomVisualCommand.target_fazy_find()
  local target = vim.fn.getreg('"')
  vim.call("GlobalWrapper_find_rip_grep")
  vim.api.nvim_put({target}, 'c', true, true)
end

return CustomVisualCommand
