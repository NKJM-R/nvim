" GitHub
" https://github.com/junegunn/fzf.vim

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

nnoremap <silent> <Leader>F :<C-u>silent call <SID>find_rip_grep()<CR>

" ファイル全体でのインクリメントサーチ　
" 別途で install ripgrep が必要だと思う気がすると感じた
function! s:find_rip_grep() abort
    call fzf#vim#grep(
                \   'rg --ignore-file ~/.ignore --column --line-number --no-heading --hidden --smart-case .+',
                \   1,
                \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%', '?'),
                \   0,
                \ )
endfunction
