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
end)
require('bufferline').setup {}
