" -------------
" 
"
if has('nvim')
    let g:vim_home = expand('~/.config/nvim')
else
    let g:vim_home = expand('~/.vim')
endif

" -------------
" rcファイル読み込み関数
"
function! s:source_rc(rc_file_name) abort
    let rc_file = g:vim_home . '/' . a:rc_file_name
    if filereadable(rc_file)
        execute 'source' rc_file
    else
        echoerr "読み込めないファイルです: " . rc_file
    endif
endfunction

" -------------
" Leaderキーの割り当て　とりあえずスペースで
"
let mapleader = "\<Space>"

" -------------
" vim標準の設定
"
call s:source_rc('default.vim')
call s:source_rc('mapping.vim')
call s:source_rc('memo.vim')
call s:source_rc('smooth_scroll.vim')
call s:source_rc('start_up.vim')
call s:source_rc('yank_path.vim')
call s:source_rc('todo.vim')

" -------------
" PlugIn設定
"
call plug#begin('~/.vim/plugged')

call s:source_rc('plugin/auto-pairs.vim')
call s:source_rc('plugin/fzf.vim')
call s:source_rc('plugin/lsp/nvim-lsp-installer.vim')
call s:source_rc('plugin/lsp/nvim-lspconfig.vim')
call s:source_rc('plugin/nerdtree-buffer-ops.vim')
call s:source_rc('plugin/nerdtree-git.vim')
call s:source_rc('plugin/nerdtree-syntax-highlight.vim')
call s:source_rc('plugin/nerdtree-visual-selection.vim')
call s:source_rc('plugin/nerdtree.vim')
call s:source_rc('plugin/traces.vim')
call s:source_rc('plugin/translate.vim')
call s:source_rc('plugin/vim-airline.vim')
call s:source_rc('plugin/vim-cheatsheet.vim')
call s:source_rc('plugin/vim-devicons.vim')
call s:source_rc('plugin/vim-gitgutter.vim')
call s:source_rc('plugin/vim-repeat.vim')
call s:source_rc('plugin/vim-surround.vim')
call s:source_rc('plugin/vim-tmux-navigator.vim')
call s:source_rc('plugin/winresizer.vim')

" -------------
" NeoVim向けPlugIn
"
call s:source_rc('plugin/blamer.vim')

" -------------
" カラースキーム系
"
call s:source_rc('plugin/shirotelin.vim')

" -------------
" プラグインのインストールはここまで
"
call plug#end()

" -------------
" テーマ系の設定
" 
" カラースキームを選択"
colorscheme shirotelin

" airline-vimのテーマを選択
" Mac標準ターミナルだとsolarizedのが視認しやすい
" let g:airline_theme = 'solarized'
"

lua <<EOF
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  -- LSPサーバーのフォーマット機能を無効にする
  -- client.resolved_capabilities.document_formatting = false

  local opts = { noremap = true, silent = true }
  buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
  buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
  buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
  buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
  buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

local lsp_installer = require "nvim-lsp-installer"
local lspconfig = require "lspconfig"
lsp_installer.setup()
for _, server in ipairs(lsp_installer.get_installed_servers()) do
  lspconfig[server.name].setup {
    on_attach = on_attach,
  }
end

-- lspconfig[server.name].setupに追加
capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- 最後に追加
vim.opt.completeopt = "menu,menuone,noselect"

local cmp = require"cmp"
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-l>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" },
  }, {
    { name = "buffer" },
  })
})
EOF
