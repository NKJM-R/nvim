if has('nvim')
    let g:vim_home = expand('~/.config/nvim')
else
    let g:vim_home = expand('~/.vim')
endif

" rcファイル読み込み関数
function! s:source_rc(rc_file_name)
    let rc_file = expand(g:vim_home . '/' . a:rc_file_name)
    if filereadable(rc_file)
        execute 'source' rc_file
    endif
endfunction

" -------------
"  vim標準の設定
call s:source_rc('default.vim')

" -------------
"  PlugIn設定
call plug#begin('~/.vim/plugged')

call s:source_rc('plugin/fzf.vim')

call plug#end()

