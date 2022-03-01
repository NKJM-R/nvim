" GitHub: https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#requirements
" 参考資料: https://kashewnuts.github.io/2020/04/08/migrated_lsp_client_to_coc_nvim.html#coc-nvim
" 拡張の一覧: https://www.npmjs.com/search?q=keywords%3Acoc.nvim

Plug 'neoclide/coc.nvim', {'branch': 'release'}
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set statusline^=%{coc#status()}
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

let g:ale_lint_on_save = 1
