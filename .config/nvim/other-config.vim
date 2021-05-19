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

" MARKDOWN Preview

let g:mkdp_echo_preview_url = 1

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

