" https://github.com/vim-airline/vim-airline
" ステータスバー変える奴

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline#extensions#tabline#enabled = 1

" タブに番号表示する
let g:airline#extensions#tabline#buffer_idx_mode = 1

" 番号のフォーマット設定
let g:airline#extensions#tabline#buffer_idx_format = {
	\ '0': '0 ',
	\ '1': '1 ',
	\ '2': '2 ',
	\ '3': '3 ',
	\ '4': '4 ',
	\ '5': '5 ',
	\ '6': '6 ',
	\ '7': '7 ',
	\ '8': '8 ',
	\ '9': '9 '
	\}

" タブの区切り文字設定
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'

