" https://github.com/Xuyuanp/scrollbar.nvim
" スクロールバーを表示させるやつ(neovim用らいしい)

Plug 'Xuyuanp/scrollbar.nvim'

augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

