" GitHub: https://github.com/autozimu/LanguageClient-neovim
" https://engineering.mercari.com/blog/entry/mercari_codecast_1/

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" 
" " マッピングの設定
" nnoremap <silent> gv        :<C-u>call LanguageClient#explainErrorAtPoint()<CR>
" nnoremap <silent> gi        :<C-u>call LanguageClient#textDocument_implementation()<CR>
" nnoremap <silent> gkr       :<C-u>call LanguageClient#textDocument_references()<CR>
" nnoremap <silent> gr        :<C-u>call LanguageClient#textDocument_rename()<CR>
" nnoremap <silent> <Leader>i :<C-u>call <SID>ls_toggle_document_hover()<CR>
" nnoremap <silent> gd        :<C-u>call LanguageClient#textDocument_definition({'handle': v:true}, function('Language_client_definition_callback'))<CR>
" nnoremap <silent> gsi       :<C-u>silent call <SID>ls_toggle_document_highlight()<CR>
" nnoremap <silent> gc        :<C-u>silent Vista finder fzf:lcn<CR>
" 
" " 各言語の Language Server の起動コマンド
" let g:LanguageClient_serverCommands = {
"       \ 'vim': [
"       \   '~/.config/nvim/plugin/lsp/node_modules/vim-language-server/bin/index.js',
"       \   '--stdio'
"       \ ],
"       \ 'ruby': ['solargraph', 'stdio'],
"       \ 'python': [
"       \   'pylsp'
"       \ ]
"       \ }
