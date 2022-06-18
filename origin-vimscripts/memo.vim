function! EditMemo(file) abort
  execute ':edit' g:vim_home . '/.memos/' . a:file
endfunction

command! -nargs=1 Memo call EditMemo(<f-args>)

