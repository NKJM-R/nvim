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
nnoremap <Leader>f :Files<CR>

" Leader系のマッピング設定
nnoremap <Leader>u :source $MYVIMRC<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>f :Files<CR>

