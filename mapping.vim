map! ¥ \

" コマンドラインモード
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>

" インサートモード時の移動
inoremap <C-a> <C-o>^
inoremap <C-b> <C-o>h
inoremap <C-d> <C-o>x
inoremap <C-e> <C-o>$
inoremap <C-f> <C-o>l
inoremap <C-k> <C-o>d$

" よくわかんないから無効化
" inoremap <silent> <ESC> <C-\><C-n>

" terminal emulatorでESCで戻れるようにする　
tnoremap <silent> <ESC> <C-\><C-n>

" ノーマルモード時
nnoremap n nzz
nnoremap N Nzz
" カーソルも移動するようにする
nnoremap <C-e> <C-e>j
nnoremap <C-y> <C-y>k
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" リサイズ
" nnoremap <C-w><C-e> <CMD>WinResizerStartResize<CR>

"タブ間を行き来するやつ
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" Leader系のマッピング設定
nnoremap <Leader>u <CMD>source $MYVIMRC<CR>
nnoremap <Leader>w <CMD>w<CR>
nnoremap <Leader>W <CMD>wq<CR>
nnoremap <Leader>q <CMD>q!<CR>
nnoremap <Leader>f <CMD>Files<CR>
nnoremap <Leader>n <CMD>NERDTree<CR>


" 現在のバッファだけを閉じる
map <leader>z :bp<bar>sp<bar>bn<bar>bd<CR>

" visualモードで選択した奴を検索する
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" 選択した範囲を囲う
vnoremap <Leader>s` y:s:<C-R>=escape(@","/\ " )<CR>:`\0`<CR>
vnoremap <Leader>s" y:s:<C-R>=escape(@","/\ " )<CR>:"\0"<CR>
vnoremap <Leader>s' y:s:<C-R>=escape(@",'/\ ' )<CR>:'\0'<CR>
vnoremap <Leader>s( y:s:<C-R>=escape(@",'/\ ' )<CR>:(\0)<CR>
vnoremap <Leader>s) y:s:<C-R>=escape(@",'/\ ' )<CR>:(\0)<CR>
vnoremap <Leader>s{ y:s:<C-R>=escape(@",'/\ ' )<CR>:{\0}<CR>
vnoremap <Leader>s} y:s:<C-R>=escape(@",'/\ ' )<CR>:{\0}<CR>
vnoremap <Leader>s[ y:s:<C-R>=escape(@",'/\ ' )<CR>:[\0]<CR>
vnoremap <Leader>s] y:s:<C-R>=escape(@",'/\ ' )<CR>:[\0]<CR>

" 選択した範囲を翻訳
vnoremap <Leader>t :Translate<CR>

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" tmuxと連携したウィンドウの移動
nnoremap <C-w><C-h> :TmuxNavigateLeft<cr>
nnoremap <C-w><C-j> :TmuxNavigateDown<cr>
nnoremap <C-w><C-k> :TmuxNavigateUp<cr>
nnoremap <C-w><C-l> :TmuxNavigateRight<cr>
nnoremap <C-w>h :TmuxNavigateLeft<cr>
nnoremap <C-w>j :TmuxNavigateDown<cr>
nnoremap <C-w>k :TmuxNavigateUp<cr>
nnoremap <C-w>l :TmuxNavigateRight<cr>
