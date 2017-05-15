" Vundle setup
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0ng/vim-hybrid'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'sjl/gundo.vim'

call vundle#end()
filetype plugin indent on
" End Vundle

set term=xterm
" column limit
set textwidth=80
" show line number on current line
set number
" Fix backspace
set backspace=indent,eol,start
" Fold by indent
set foldmethod=indent
" Open most folds by default
set foldlevelstart=10


" Allow buffers to be hidden if you've modified a buffer.
set hidden
" Move to the next buffer
nmap <C-L> :bnext<CR>
" Move to the previous buffer
nmap <C-H> :bprevious<CR>

" Indent settings
" Width of hard tab
set tabstop=4
" Insert spaces instead of tab characters
set expandtab
" Width of soft tab
set softtabstop=2
" How many columns to shift by (>>)
set shiftwidth=2 " 2 space tabs
" Round (>>) action to multiples of tab width
set shiftround
" Keep indent level
set autoindent
set smartindent

" Move vertically by visual line
nnoremap j gj
nnoremap k gk
" Toggle gundo (super undo)
nnoremap <C-u> :GundoToggle<CR>

" Search settings
" Search as characters are entered
set incsearch
" Highlight matches
set hlsearch
" Turn off search highlight
nnoremap <C-o> :nohlsearch<CR>

" Highlighting
syntax on
set t_Co=256
set termguicolors
set background=dark
colorscheme hybrid
" highlight current line
set cursorline

" Haskell highlighting
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_indent_case_alternative = 1
let g:haskell_indent_if = 0

" Swap some haskell highlight groups (specific to hybrid colorscheme)
" blue types
highlight link haskellType Keyword
highlight link haskellAssocType Keyword
highlight link haskellQuotedType Keyword
" cyan keywords
highlight link haskellKeyword Structure
highlight link haskellDefault Structure
highlight link haskellInfix Structure
highlight link haskellRecursiveDo Structure
highlight link haskellArrowSyntax Structure
" orange strings
highlight link haskellString Type
highlight link haskellChar Type

" Airline settings
" No fancy status bar arrows
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
" Hide vim status bar
set noshowmode
" keep vim-airline on last window always
set laststatus=2
" Get rid of arrows
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" Mouse interaction
set mouse=a
" Scroll one line instead of three
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Visual whitespace settings
set list
set listchars=eol:\ 
" Show tabs as "|   " (don't remove trailing space)
set listchars+=tab:\|\ 
set listchars+=trail:~
