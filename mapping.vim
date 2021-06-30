" インサートモード時の移動

inoremap <C-b> <C-o>h
inoremap <C-d> <C-o>x
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^
inoremap <C-f> <C-o>l

inoremap <silent> <ESC> <C-\><C-n>

" ノーマルモード時

nnoremap n nzz
nnoremap N Nzz
nnoremap <Leader>f <CMD>Files<CR>

" Leader系のマッピング設定
nnoremap <Leader>u <CMD>source $MYVIMRC<CR>
nnoremap <Leader>w <CMD>w<CR>
nnoremap <Leader>W <CMD>wq<CR>
nnoremap <Leader>q <CMD>q!<CR>
nnoremap <Leader>f <CMD>Files<CR>

