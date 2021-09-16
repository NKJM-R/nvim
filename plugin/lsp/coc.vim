" GitHub: https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#requirements
" 参考資料: https://kashewnuts.github.io/2020/04/08/migrated_lsp_client_to_coc_nvim.html#coc-nvim
" 拡張の一覧: https://www.npmjs.com/search?q=keywords%3Acoc.nvim

Plug 'neoclide/coc.nvim', {'branch': 'release'}

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set statusline^=%{coc#status()}
