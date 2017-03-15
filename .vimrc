" No fancy status bar arrows
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
" Hide vim status bar
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

let g:haskell_classic_highlighting = 1

set background=dark
colorscheme hybrid
set termguicolors
" highlight current line
set cursorline

" column limit
set textwidth=80
" width of hard tab
set tabstop=4
" insert spaces instead of tab characters
set expandtab
" width of soft tab
set softtabstop=2
" how many columns to shift by (>>)
set shiftwidth=2 " 2 space tabs
" round (>>) action to multiples of tab width
set shiftround
" keep indent level
set autoindent
" show line number on current line
set number
" keep vim-airline on last window always
set laststatus=2

" enable mouse interaction
set mouse=a
" scroll one line instead of three
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

"hi TabLine ctermfg=White ctermbg=DarkGrey
"hi TabLineSel ctermfg=White ctermbg=DarkCyan
"hi TabLineFill ctermfg=Black ctermbg=Black

"highlight LineNr ctermfg=darkgray
"highlight CursorLineNr ctermfg=white

" show line breaks
set list
set listchars=eol:\ 
" show tabs as "|   " (don't remove trailing space)
set listchars+=tab:\|\ 
"set listchars+=space:·
set listchars+=trail:~

" fix backspace
set backspace=indent,eol,start
