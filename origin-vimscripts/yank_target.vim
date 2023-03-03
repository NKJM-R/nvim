
function! s:YankVisualTarget() abort
  let @" = @@
endfunction

command! -nargs=0 YankVisualTarget :call s:YankFullPath()
