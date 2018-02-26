
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Solarized color theme
Plugin 'altercation/vim-colors-solarized'

" Multiple cursors (selection)
Plugin 'terryma/vim-multiple-cursors'

" System explorer:
Plugin 'scrooloose/nerdtree'

" Syntax checking:
Plugin 'vim-syntastic/syntastic'

" Auto-comment lines / blocks of code:
Plugin 'tpope/vim-commentary'

" Git wrapper for vim:
Plugin 'tpope/vim-fugitive'

" Define text objects consisting of lines of code at same indent level
Plugin 'michaeljsmith/vim-indent-object'

" Autocompletion of various programming languages
Plugin 'Valloric/YouCompleteMe'

" LaTeX support
Plugin 'lervag/vimtex'

" Vim snippets
Plugin 'honza/vim-snippets'

" More Vim snippets
Plugin 'SirVer/UltiSnips'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set vim theme to 'dark solarized':
syntax enable
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
let t_Co=256
set background=dark
colorscheme solarized


" Add colored column at 80 to avoid writing too far to the right:
highlight ColorColumn ctermbg=red
set colorcolumn=80
" Show line numbering
set nu

" Set relative line numbering
set relativenumber

" Define leader key:
let mapleader=";"

" Reload vim config without having to restart editor:
map <leader>src :source ~/.vimrc<CR>

" Keep more things in memory, to speed things up:
set hidden
set history=100

" Method to the madness of indentation:
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent


" Remove extra whitespace on save:
autocmd BufWritePre * :%s/\s\+$//e

" Highlight found words when searching:
set hlsearch
" Cancel search with <Esc>:
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Re-open previously opened file:
nnoremap <Leader> <Leader> :e#<CR>

" Show matching parentheses:
set showmatch

" UltiSnips triggering:
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsUsePythonVersion = 3
" Ensure that arrow keys work as intended:
map OD <left>
map OC <right>
map OA <up>
map OB <down>

let g:vimtex_compiler_latexmk = {'callback' : 0}

" Global extra config
let g:ycm_global_ycm_extra_conf = '$USER/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
