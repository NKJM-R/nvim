" インサートモード時の移動

inoremap <C-b> <Left>
inoremap <C-d> <C-o>x
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^
inoremap <C-f> <Right>

inoremap <silent> <ESC> <C-\><C-n>

" ノーマルモード時
nnoremap n nzz
nnoremap N Nzz
nnoremap GG GGzz
