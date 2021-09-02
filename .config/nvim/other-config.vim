" Use stotify from vim
let g:spotify_token = "YWM5OGQ0Y2NhYzU3NDQ5MmI5NWM5OTJlN2I5ZDcxMzA6IDlhYTQ4YTcwM2UyMTQ2N2I5YmNhZDUyNzFhMmNkMWMy"

let g:ctrlp_custom_ignore = '^node_modules'
let g:gavascript_plugin_jsdoc = 1
let g:deoplete#enable_at_startup = 1
let g:limelight_conceal_ctermfg = 'gray'

" emmet
let g:user_emmet_install_global = 0

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,css,javascript,javascript.jsx EmmetInstall

autocmd BufWritePre *.* Neoformat
" autocmd BufWritePre *.* Prettier

" Move lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>== 
nnoremap <leader>j :m .+1<CR>== 

" MARKDOWN Preview

let g:mkdp_echo_preview_url = 1

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Kite
let g:kite_supported_languages= ['javascript', 'typescript', 'js', 'jsx', 'typescriptreact']

" disable coc bc of Kite
" autocmd FileType javascript let b:coc_suggest_disable = 1
" autocmd FileType typescript let b:coc_suggest_disable = 1
" autocmd FileType jsx let b:coc_suggest_disable = 1
" autocmd FileType typescriptreact let b:coc_suggest_disable = 1

autocmd FileType scss setl isKeyword+=@-@
