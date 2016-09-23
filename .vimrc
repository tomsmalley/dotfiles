set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'pbrisbin/vim-syntax-shakespeare'

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

" Fancy status bar arrows
let g:airline_powerline_fonts = 1
let g:airline_theme = 'desertEx'
" Hide vim showing mode (airline does it)
set noshowmode
" Get rid of arrows
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

set term=xterm
set t_Co=256

filetype plugin on
filetype indent on
syntax on

colorscheme molokai
set cursorline " highlight current line

set formatoptions+=t
set textwidth=79 " column limit
set shiftwidth=4 " 4 space tabs
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent
set ruler " show position in bottom left
set number " show line number on current line

set laststatus=2 " for vim-airline

set mouse=a " enable mouse interaction
" scroll one line instead of three
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

hi TabLine ctermfg=White ctermbg=DarkGrey
hi TabLineSel ctermfg=White ctermbg=DarkCyan
hi TabLineFill ctermfg=Black ctermbg=Black

" show trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" show line breaks
set list
set listchars=eol:¬
"highlight ¬ ctermfg=15
syn match myChar "\¬"
highlight myChar ctermfg=17

" fix backspace
set backspace=indent,eol,start
