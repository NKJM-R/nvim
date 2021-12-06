" GitHub: https://github.com/neovim/nvim-lspconfig
"
"
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/nvim-lsp-installer'
" 
" lua << EOF
" 
" " 何故かパスが通らないので独自に追加
" package.path=package.path..';/Users/nakajimaryouta/.vim/plugged/nvim-lspconfig/lua/?.lua'
" 
" EOF
" lua require'lspconfig'.pylsp.setup{}
" 
" autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
