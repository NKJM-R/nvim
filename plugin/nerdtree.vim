" GitHub: https://github.com/preservim/nerdtree
" フォルダ表示してくれるやつ

Plug 'preservim/nerdtree'

" 最後のバッファを閉じたら自動でフォルダ表示も閉じる
" 
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" フォルダツリーのバッファが置き換わるのを抑制
"
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

