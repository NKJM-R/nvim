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
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  --
  use 'PhilRunninger/nerdtree-buffer-ops' -- nerdtreeの拡張プラグイン: 開いてる奴を強調表示してくれるらしい
  use 'airblade/vim-gitgutter'
  use 'christoomey/vim-tmux-navigator' -- " vimとtmuxでシームレスに移動する
  use 'https://github.com/tpope/vim-repeat'
  use 'junegunn/fzf.vim'
  use 'markonm/traces.vim'
  use 'mattn/vim-goimports'
  use 'preservim/nerdtree'
  use 'simeji/winresizer'
  use 'skanehira/translate.vim'
  use 'tpope/vim-surround'
  use 'yasukotelin/shirotelin'
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  use { 'junegunn/fzf', run = 'call fzf#install()' }

  -- 遅い
  -- use 'APZelos/blamer.nvim'
end)
require('bufferline').setup {}

-- vim.api.nvim_set_option('updatetime', 100)
vim.api.nvim_command [[autocmd CursorHold   * lua require'origin.gitlens'.blameVirtText()]] 
vim.api.nvim_command [[autocmd CursorMoved  * lua require'origin.gitlens'.clearBlameVirtText()]]
vim.api.nvim_command [[autocmd CursorMovedI * lua require'origin.gitlens'.clearBlameVirtText()]]

-- 最適化設定
vim.go['jetpack#optimization'] = 3
