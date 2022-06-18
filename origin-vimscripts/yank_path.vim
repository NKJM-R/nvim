" 表示中のファイルパスのコピー
function! s:YankFilePath() abort
  let @" = expand("%")
endfunction

function! s:YankFileName() abort
  let @" = expand("%:t")
endfunction

function! s:YankFullPath() abort
  let @" = expand("%:p")
endfunction

command! -nargs=0 Yfp :call s:YankFilePath()
command! -nargs=0 Yfn :call s:YankFileName()
command! -nargs=0 YFp :call s:YankFullPath()
