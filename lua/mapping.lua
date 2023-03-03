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
vim.keymap.set("n", "j", "gj", { noremap = true }) -- 折り返し時に表示行単位での移動できるようにする
vim.keymap.set("n", "k", "gk", { noremap = true }) -- 折り返し時に表示行単位での移動できるようにする
vim.keymap.set("n", "*", "*Nzz", { noremap = true })
vim.keymap.set("n", "<C-n>", "<CMD>bnext<CR>", { noremap = true, silent = true }) -- バッファー間を行き来する
vim.keymap.set("n", "<C-p>", "<CMD>bprev<CR>", { noremap = true, silent = true }) -- バッファー間を行き来する
vim.keymap.set("n", "g<C-n>", "<CMD>tabnext<CR>", { noremap = true, silent = true }) -- タブ間を行き来する
vim.keymap.set("n", "g<C-p>", "<CMD>tabprev<CR>", { noremap = true, silent = true }) -- タブ間を行き来する

-- Leader系のマッピング設定
vim.keymap.set("n", "<Leader>u", "<CMD>source $MYVIMRC<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>w", "<CMD>w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>W", "<CMD>wq<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>q", "<CMD>q!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>f", "<CMD>Files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>n", "<CMD>NERDTree<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>z", ":bp<bar>sp<bar>bn<bar>bd<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { noremap = true }) -- ESC連打でハイライト解除
vim.keymap.set("n", "<C-w><C-h>", ":TmuxNavigateLeft<CR>", { noremap = true })
vim.keymap.set("n", "<C-w><C-j>", ":TmuxNavigateDown<CR>", { noremap = true })
vim.keymap.set("n", "<C-w><C-k>", ":TmuxNavigateUp<CR>", { noremap = true })
vim.keymap.set("n", "<C-w><C-l>", ":TmuxNavigateRight<CR>", { noremap = true })
vim.keymap.set("n", "<C-w>h", ":TmuxNavigateLeft<CR>", { noremap = true })
vim.keymap.set("n", "<C-w>j", ":TmuxNavigateDown<CR>", { noremap = true })
vim.keymap.set("n", "<C-w>k", ":TmuxNavigateUp<CR>", { noremap = true })
vim.keymap.set("n", "<C-w>l", ":TmuxNavigateRight<CR>", { noremap = true })

-- visula
vim.keymap.set("v", "<Leader>t", ":Translate", { noremap = true })
vim.keymap.set("v", "//", "y/\\V<C-R>=escape(@\",'/\\')<CR><CR>", { noremap = true })
vim.keymap.set("v", 'Y', '<CMD> s:YankFullPath()<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s`', 'y:s:<c-r>=escape(@","/\\ " )<CR>:`\\0`<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s"', 'y:s:<c-r>=escape(@","/\\ " )<CR>:"\\0"<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s(', 'y:s:<c-r>=escape(@","/\\ " )<CR>:(\\0)<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s)', 'y:s:<c-r>=escape(@","/\\ " )<CR>:(\\0)<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s{', 'y:s:<c-r>=escape(@","/\\ " )<CR>:{\\0}<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s}', 'y:s:<c-r>=escape(@","/\\ " )<CR>:{\\0}<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s[', 'y:s:<c-r>=escape(@","/\\ " )<CR>:[\\0]<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s]', 'y:s:<c-r>=escape(@","/\\ " )<CR>:[\\0]<CR>', { noremap = true })
vim.keymap.set("v", '<Leader>s\'', 'y:s:<c-r>=escape(@","/\\ " )<CR>:"\\0"<CR>', { noremap = true })
