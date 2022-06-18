vim.cmd('runtime */jetpack.vim')
require('jetpack').startup(function(use)
  use 'junegunn/fzf.vim'
  use { 'junegunn/fzf', run = 'call fzf#install()' }
  use 'yasukotelin/shirotelin'
  use 'preservim/nerdtree'
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  --
  use 'markonm/traces.vim'
  use 'mattn/vim-goimports'
  use 'PhilRunninger/nerdtree-buffer-ops' -- nerdtreeの拡張プラグイン: 開いてる奴を強調表示してくれるらしい
  use 'skanehira/translate.vim'
  use 'airblade/vim-gitgutter'
  use 'https://github.com/tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'christoomey/vim-tmux-navigator' -- " vimとtmuxでシームレスに移動する
  use 'simeji/winresizer'

  -- 遅い
  --  use 'APZelos/blamer.nvim'
end)
require('bufferline').setup {}
