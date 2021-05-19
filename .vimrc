set number
set numberwidth=1
syntax enable
set showcmd
set ruler
set encoding=utf-8
set sw=2
set relativenumber
set laststatus=2
set mouse=a
set showmatch
set signcolumn=yes
set expandtab
set tabstop=2 shiftwidth=2
set nocompatible
set noshowmode
set t_Co=256
set hidden
set clipboard=unnamed
set cursorline
set autoindent
set cindent
set smartindent
set backspace=indent

let g:syntastic_auto_jump = 0

filetype plugin indent on

call plug#begin('~/.vim/plugged')
" Temas
Plug 'morhetz/gruvbox'
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'ap/vim-css-color'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/goyo.vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'Badacadabra/vim-archery'
Plug 'gilgigilgil/anderson.vim'
Plug 'ajmwagar/vim-deus'

" if exists('+termguicolors')
"       let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"       let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"       set termguicolors
"     endif

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
" JavaScript PlugIns
Plug 'sheerun/vim-polyglot'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', {'do': {-> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'yuezk/vim-js'
Plug 'junegunn/limelight.vim'
Plug 'airblade/vim-rooter'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'stsewd/fzf-checkout.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Spotify
Plug 'HendrikPetertje/vimify'

call plug#end()
let g:spotify_token = "YWM5OGQ0Y2NhYzU3NDQ5MmI5NWM5OTJlN2I5ZDcxMzA6IDlhYTQ4YTcwM2UyMTQ2N2I5YmNhZDUyNzFhMmNkMWMy"

" colorscheme nord
" colorscheme gruvbox

colorscheme deus
set termguicolors

" colorscheme cobalt2
let g:airline_theme = "deus"
" let g:airline_theme = "bubblegum"
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['^node_modules']
let g:ctrlp_custom_ignore = '^node_modules'
let g:gavascript_plugin_jsdoc = 1
let g:deoplete#enable_at_startup = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:limelight_conceal_ctermfg = 'gray'
" let g:python3_host_prog = "/usr/bin/python3"

" VIM AIRLINE
" enable tabline
" enable powerline fonts
let g:airline_powerline_fonts = 1

let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }

" mapping
let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>fs :Files<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader>gs :Cocsearch
nmap <Leader>/ :Comment <CR>
vmap <Leader>/ :Comment <CR>
nmap <Leader>w :w<CR>

" coc.nvim config
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Prettier
autocmd FileType scss setl iskeyword+=@-@
autocmd BufWritePre *.* Neoformat

" SNIPPETS

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" STARTIFY SWEETRAARE
let g:startify_custom_header = [
\ ' _____  _    _ _____ _____ ___________  ___    ___  ______ _____  ',
\ '/  ___|| |  | |  ___|  ___|_   _| ___ \/ _ \  / _ \ | ___ \  ___|',
\ '\ `--. | |  | | |__ | |__   | | | |_/ / /_\ \/ /_\ \| |_/ / |__  ',
\ ' `--. \| |/\| |  __||  __|  | | |    /|  _  ||  _  ||    /|  __|  ',
\ '/\__/ /\  /\  / |___| |___  | | | |\ \| | | || | | || |\ \| |___ ',
\ '\____/  \/  \/\____/\____/  \_/ \_| \_\_| |_/\_| |_/\_| \_\____/ ',
\ ]

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rr <Plug>(coc-refactor)


" FZF
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


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




"" for transparent background
"function! AdaptColorscheme()
"highlight clear CursorLine
"highlight Normal ctermbg=none
"highlight LineNr ctermbg=none
"highlight Folded ctermbg=none
"highlight NonText ctermbg=none
"highlight SpecialKey ctermbg=none
"highlight VertSplit ctermbg=none
"highlight SignColumn ctermbg=none
"endfunction
"autocmd ColorScheme * call AdaptColorscheme()
"highlight Normal guibg=NONE ctermbg=NONE
"highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight clear LineNr
"highlight clear SignColumn
"highlight clear StatusLine
"" Change Color when entering Insert Mode
"autocmd InsertEnter * set nocursorline
"" Revert Color to default when leaving Insert Mode
"autocmd InsertLeave * set nocursorline
""" extra settings, uncomment them if necessary :) 
""set cursorline
""set noshowmode
""set nocursorline
"" trasparent end
