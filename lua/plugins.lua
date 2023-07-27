vim.cmd('runtime */jetpack.vim')
require('jetpack').startup(function(use)
  -- lsp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- lsp
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  -- linter

  -- etc
  use 'gennaro-tedesco/nvim-peekup'
  use 'reireias/vim-cheatsheet' -- チートシート表示プラグイン
  use 'PhilRunninger/nerdtree-buffer-ops' -- nerdtreeの拡張プラグイン: 開いてる奴を強調表示してくれるらしい
  use 'airblade/vim-gitgutter'
  use 'christoomey/vim-tmux-navigator' -- " vimとtmuxでシームレスに移動する
  use 'https://github.com/tpope/vim-repeat'
  use 'junegunn/fzf.vim'
  use 'markonm/traces.vim'
  use 'mattn/vim-goimports'
  use 'nkjm-r/smooth-scroll.vim' -- <C-d><C-u>の挙動を少し変える
  use 'preservim/nerdtree'
  use 'simeji/winresizer'
  use 'skanehira/jumpcursor.vim' -- 移動系
  use 'skanehira/translate.vim'
  use 'tpope/vim-surround'
  use 'yasukotelin/shirotelin'
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  use { 'junegunn/fzf', run = 'call fzf#install()' }
end)

vim.api.nvim_command [[autocmd CursorHold   * lua require'origin.gitlens'.blameVirtText()]] 
vim.api.nvim_command [[autocmd CursorMoved  * lua require'origin.gitlens'.clearBlameVirtText()]]
vim.api.nvim_command [[autocmd CursorMovedI * lua require'origin.gitlens'.clearBlameVirtText()]]
vim.api.nvim_command [[autocmd CursorMovedI * lua require'origin.gitlens'.clearBlameVirtText()]]
vim.api.nvim_command [[command! -nargs=? CodeReview lua require'origin.code_review'.open_diff_files(<f-args>)]]

-- 最適化設定
vim.g['jetpack#optimization'] = 1
