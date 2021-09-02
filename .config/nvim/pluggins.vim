call plug#begin('~/.vim/plugged')
" ColorSchemes
Plug 'morhetz/gruvbox' " Probably the best
Plug 'gertjanreynaert/cobalt2-vim-theme' " WesBos theme
Plug 'ap/vim-css-color' " Show color
Plug 'arcticicestudio/nord-vim' " Second best
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' } " To be tested
Plug 'Badacadabra/vim-archery' " Kinda nice
Plug 'gilgigilgil/anderson.vim'
Plug 'ajmwagar/vim-deus' " Current in use
Plug 'embark-theme/vim', { 'as': 'embark' }

" if exists('+termguicolors')
"       let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"       let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"       set termguicolors
"     endif

" Personalization
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/limelight.vim' " Focus mode
Plug 'junegunn/goyo.vim' " Focus mode

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sbdchd/neoformat'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'andymass/vim-matchup'
Plug 'dense-analysis/ale'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'nvim-treesitter/playground'
Plug 'jparise/vim-graphql'
Plug 'neovim/nvim-lspconfig'

" File Managment
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', {'do': {-> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" JavaScript PlugIns
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'yuezk/vim-js'
Plug 'airblade/vim-rooter'

" emmet PlugIns
Plug 'mattn/emmet-vim'

" Markdown PlugIns
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Spotify
Plug 'HendrikPetertje/vimify'

" Kite
Plug 'kiteco/vim-plugin'

call plug#end()
