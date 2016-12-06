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
set noexpandtab " usually expandtab
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
" show tabs as "|    " (don't remove trailing space)
set listchars+=tab:\|\ 
set listchars+=space:·
set listchars+=trail:~
"highlight ¬ ctermfg=15
syn match myChar "\¬"
highlight myChar ctermfg=17

" fix backspace
set backspace=indent,eol,start
