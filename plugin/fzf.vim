nnoremap <silent> <Leader>F :<C-u>silent call <SID>find_rip_grep()<CR>

" ファイル全体でのインクリメントサーチ　
" 別途で install ripgrep が必要
function! s:find_rip_grep() abort
    call fzf#vim#grep(
                \   'rg --ignore-file ~/.ignore --column --line-number --no-heading --hidden --smart-case .+',
                \   1,
                \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%', '?'),
                \   0,
                \ )
endfunction

" luaから呼び出したい
function! GlobalWrapper_find_rip_grep() abort
  call s:find_rip_grep()
endfunction
