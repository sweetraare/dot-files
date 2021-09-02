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
set lazyredraw
" set ignorecase

let g:syntastic_auto_jump = 0
" filetype plugin indent on

" Plugins
so ~/.config/nvim/pluggins.vim

so ~/.config/nvim/other-config.vim

"ColorSchemes

" colorscheme nord
" colorscheme cobalt2

let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_italic = '1'

" colorscheme spaceduck
colorscheme gruvbox
" colorscheme embark

" colorscheme deus
set termguicolors

" let g:airline_theme= "spaceduck"
" let g:airline_theme= "gruvbox"
let g:airline_theme = "deus"
" let g:airline_theme = "bubblegum"

" NerdTree
so ~/.config/nvim/nerdtree-config.vim

" VIM AIRLINE
so ~/.config/nvim/airline-config.vim

" mapping
so ~/.config/nvim/maps.vim

" Prettier
" autocmd FileType scss setl iskeyword+=@-@
" autocmd BufWritePre *.* Neoformat

" STARTIFY
so ~/.config/nvim/startify-config.vim

" FZF
so ~/.config/nvim/fzf-config.vim

" ALE
so ~/.config/nvim/ale-config.vim

" LSP
so ~/.config/nvim/lsp.vim

" Tree Sitter
" so ~/.config/nvim/tree-sitter.vim


" for transparent Background
" so ~/.config/nvim/transparent-background.vim
