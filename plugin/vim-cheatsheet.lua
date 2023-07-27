local cheatsheet = '/.cheatsheet'
local nvim_folder = vim.fn.stdpath('config')

vim.g['cheatsheet#cheat_file'] = nvim_folder .. cheatsheet
vim.g['cheatsheet#float_window'] = 1
vim.g['cheatsheet#float_window_width_ratio'] = 0.6
vim.g['cheatsheet#float_window_height_ratio'] = 0.6

vim.g['peekup_paste_before'] = '<leader>P'
vim.g['peekup_paste_after'] = '<leader>p'

