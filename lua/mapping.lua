-- <Leader>の設定
function custom_mapping()
  vim.keymap.set("n", "<Space>", "<Nop>")
  vim.g.mapleader = " "

  ---------- command
  vim.keymap.set("c", "<C-a>", "<Home>", { noremap = true })
  vim.keymap.set("c", "<C-b>", "<Left>", { noremap = true })
  vim.keymap.set("c", "<C-d>", "<Del>", { noremap = true })
  vim.keymap.set("c", "<C-e>", "<End>", { noremap = true })
  vim.keymap.set("c", "<C-f>", "<Right>", { noremap = true })
  vim.keymap.set("c", "<C-n>", "<Down>", { noremap = true })
  vim.keymap.set("c", "<C-p>", "<Up>", { noremap = true })
  vim.keymap.set("c", "<C-k>", "<Del>", { noremap = true })

  ---------- insert
  vim.keymap.set("i", "<C-a>", "<Home>", { noremap = true })
  vim.keymap.set("i", "<C-b>", "<Left>", { noremap = true })
  vim.keymap.set("i", "<C-d>", "<Del>", { noremap = true })
  vim.keymap.set("i", "<C-e>", "<End>", { noremap = true })
  vim.keymap.set("i", "<C-f>", "<Right>", { noremap = true })
  vim.keymap.set("i", "<C-k>", "<C-o>d$", { noremap = true })

  --------- terminal
  vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { noremap = true, silent = true })

  --------- normal
  vim.keymap.set("n", "n", "nzz", { noremap = true, silent = true })
  vim.keymap.set("n", "N", "Nzz", { noremap = true, silent = true })
  vim.keymap.set("n", "<C-e>", "<C-e>j", { noremap = true })
  vim.keymap.set("n", "<C-y>", "<C-y>k", { noremap = true })
  vim.keymap.set("n", "j", "gj", { noremap = true })                                 -- 折り返し時に表示行単位での移動できるようにする
  vim.keymap.set("n", "k", "gk", { noremap = true })                                 -- 折り返し時に表示行単位での移動できるようにする
  vim.keymap.set("n", "*", "*Nzz", { noremap = true })
  vim.keymap.set("n", "<C-n>", "<CMD>bnext<CR>", { noremap = true, silent = true })  -- バッファー間を行き来する
  vim.keymap.set("n", "<C-p>", "<CMD>bprev<CR>", { noremap = true, silent = true })  -- バッファー間を行き来する
  vim.keymap.set("n", "g<C-n>", "<CMD>tabnext<CR>", { noremap = true, silent = true }) -- タブ間を行き来する
  vim.keymap.set("n", "g<C-p>", "<CMD>tabprev<CR>", { noremap = true, silent = true }) -- タブ間を行き来する
  vim.keymap.set("n", "<C-[>", ':lua require("origin.jump_to_change_in_indent").jump_to_change_in_indent(false)<CR>',
    { noremap = true, silent = true })
  vim.keymap.set("n", "<C-]>", ':lua require("origin.jump_to_change_in_indent").jump_to_change_in_indent(true)<CR>',
    { noremap = true, silent = true })
  vim.keymap.set("n", "<Leader>d", '<CMD>lua REVIEW_MODE()<CR>', { noremap = true, silent = true })


  -- Leader系のマッピング設定
  vim.keymap.set("n", "<Leader>u", ":source /Users/ryota-nakajima/.config/nvim/lua/mapping.lua<CR>",
    { noremap = true, silent = false }) -- 際読み込み
  vim.keymap.set("n", "<Leader>w", "<CMD>w<CR>", { noremap = true, silent = true })
  vim.keymap.set("n", "<Leader>W", "<CMD>wq<CR>", { noremap = true, silent = true })
  vim.keymap.set("n", "<Leader>q", "<CMD>q!<CR>", { noremap = true, silent = true })
  vim.keymap.set("n", "<Leader>f", "<CMD>Files<CR>", { noremap = true, silent = true })
  vim.keymap.set("n", "<Leader>n", "<CMD>NERDTree<CR>", { noremap = true, silent = true })
  vim.keymap.set("n", "<leader>z", ":bp<bar>sp<bar>bn<bar>bd<CR>", { noremap = true, silent = true })
  vim.keymap.set("n", "<leader>R", "ggVG\"+p", { noremap = true, silent = true })

  vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { noremap = true }) -- ESC連打でハイライト解除
  vim.keymap.set("n", "<C-w><C-h>", ":TmuxNavigateLeft<CR>", { noremap = true })
  vim.keymap.set("n", "<C-w><C-j>", ":TmuxNavigateDown<CR>", { noremap = true })
  vim.keymap.set("n", "<C-w><C-k>", ":TmuxNavigateUp<CR>", { noremap = true })
  vim.keymap.set("n", "<C-w><C-l>", ":TmuxNavigateRight<CR>", { noremap = true })
  vim.keymap.set("n", "<C-w>h", ":TmuxNavigateLeft<CR>", { noremap = true })
  vim.keymap.set("n", "<C-w>j", ":TmuxNavigateDown<CR>", { noremap = true })
  vim.keymap.set("n", "<C-w>k", ":TmuxNavigateUp<CR>", { noremap = true })
  vim.keymap.set("n", "<C-w>l", ":TmuxNavigateRight<CR>", { noremap = true })

  -- visual
  vim.keymap.set("v", "<Leader>f", 'y<CR><CMD>lua require("origin.visual").target_find_from_files()<CR>',
    { noremap = true })
  vim.keymap.set("v", "<Leader>F", 'y<CR><CMD>lua require("origin.visual").target_fazy_find()<CR>', { noremap = true })
  vim.keymap.set("v", "<Leader>t", ":Translate<CR>", { noremap = true })
  vim.keymap.set("v", "//", "y/\\V<C-R>=escape(@\",'/\\')<CR><CR>", { noremap = true })

  vim.keymap.set("v", '<Leader>s`', 'y:s:<c-r>=escape(@","/\\ " )<CR>:`\\0`<CR>', { noremap = true }) -- 範囲内を ` で囲う
  vim.keymap.set("v", '<Leader>s"', 'y:s:<c-r>=escape(@","/\\ " )<CR>:"\\0"<CR>', { noremap = true })
  vim.keymap.set("v", '<Leader>s(', 'y:s:<c-r>=escape(@","/\\ " )<CR>:(\\0)<CR>', { noremap = true })
  vim.keymap.set("v", '<Leader>s)', 'y:s:<c-r>=escape(@","/\\ " )<CR>:(\\0)<CR>', { noremap = true })
  vim.keymap.set("v", '<Leader>s{', 'y:s:<c-r>=escape(@","/\\ " )<CR>:{\\0}<CR>', { noremap = true })
  vim.keymap.set("v", '<Leader>s}', 'y:s:<c-r>=escape(@","/\\ " )<CR>:{\\0}<CR>', { noremap = true })
  vim.keymap.set("v", '<Leader>s[', 'y:s:<c-r>=escape(@","/\\ " )<CR>:[\\0]<CR>', { noremap = true })
  vim.keymap.set("v", '<Leader>s]', 'y:s:<c-r>=escape(@","/\\ " )<CR>:[\\0]<CR>', { noremap = true })
  vim.keymap.set("v", '<Leader>s\'', 'y:s:<c-r>=escape(@","/\\ " )<CR>:"\\0"<CR>', { noremap = true })

  vim.keymap.set("v", '<Leader>y', '"+y', { noremap = true }) -- クリップボードにコピー
end
custom_mapping()

-- @TODO: 別ファイルに記載する
function unmap_review_keymap()
  vim.api.nvim_del_keymap('n', 'q')
  vim.api.nvim_del_keymap('n', '<C-n>')
  vim.api.nvim_del_keymap('n', '<C-p>')
  custom_mapping()
end

local code_review = require('origin.code_review')
function close_review_file()
  code_review.append_reviewed_file()
  vim.cmd('close')
  vim.cmd('bdelete')
end

function quit_code_review()
  unmap_review_keymap()
  close_review_file()
end

function next_code_review()
  close_review_file()
  vim.cmd('bnext')
  vim.cmd('Gvdiffsplit master')
end

function previout_code_review()
  close_review_file()
  vim.cmd('bprev')
  vim.cmd('Gvdiffsplit master')
end

-- 読専で開いてる時にのみ動作するキーマップ
function REVIEW_MODE()
  vim.cmd('Gvdiffsplit master')
  if vim.bo.readonly then
    print("REVIEW_MODE")
    vim.keymap.set('n', 'q', '<CMD>lua quit_code_review()<CR>')
    vim.keymap.set('n', '<C-n>', '<CMD>lua next_code_review()<CR>')
    vim.keymap.set('n', '<C-p>', '<CMD>lua previout_code_review()<CR>')
  end
end

-- 'readonly' オプションが変更されたときに上記関数を呼び出す
-- vim.cmd("autocmd OptionSet readonly lua REVIEW_MODE()")
