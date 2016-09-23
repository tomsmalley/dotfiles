" Vim color file
" Maintainer:   Mingbai <mbbill AT gmail DOT com>
" Customised

" disable under win32 colsole
if has("win32") && !has("gui_running")
	finish
endif

set background=dark
if version > 580
	" no guarantees for version 5.8 and below, but this makes it stop
	" complaining
	hi clear
	if exists("syntax_on")
	syntax reset
	endif
endif
let g:colors_name="desertEx"

highlight Normal        ctermfg=254 ctermbg=233 cterm=NONE


" highlight groups
highlight Cursor        ctermfg=16  ctermbg=226 cterm=NONE
highlight CursorLine    ctermbg=235             cterm=none
highlight DiffAdd       ctermfg=16  ctermbg=223
highlight DiffChange    ctermfg=16  ctermbg=117
highlight DiffDelete    ctermfg=16  ctermbg=243 cterm=NONE
highlight DiffText      ctermfg=16  ctermbg=205 cterm=NONE
highlight ErrorMsg      ctermfg=231 ctermbg=196 cterm=NONE
highlight FoldColumn    ctermfg=180 ctermbg=239 cterm=NONE
highlight Folded        ctermfg=116 ctermbg=239 cterm=NONE
highlight IncSearch     ctermfg=159 ctermbg=26
highlight LineNr        ctermfg=238 ctermbg=233 cterm=NONE
" 180 beige fore
highlight MatchParen    ctermfg=16  ctermbg=180
highlight ModeMsg       ctermfg=117             cterm=NONE
highlight MoreMsg       ctermfg=29              cterm=NONE
highlight NonText       ctermfg=237             cterm=NONE
highlight Pmenu         ctermfg=231 ctermbg=61  cterm=NONE
highlight PmenuSel      ctermfg=61  ctermbg=250
highlight Question      ctermfg=48              cterm=NONE
highlight Search        ctermfg=252 ctermbg=61  cterm=NONE
highlight SpecialKey    ctermfg=240             cterm=NONE
highlight StatusLine    ctermfg=16  ctermbg=144 cterm=bold
highlight StatusLineNC  ctermfg=250 ctermbg=241 cterm=NONE
highlight Title         ctermfg=167             cterm=NONE
highlight VertSplit     ctermfg=241 ctermbg=241 cterm=NONE
highlight Visual                    ctermbg=237 cterm=NONE
highlight WarningMsg    ctermfg=210             cterm=NONE
highlight WildMenu      ctermfg=250 ctermbg=235 cterm=NONE
highlight colorcolumn               ctermbg=240

" syntax highlighting groups
highlight Comment       ctermfg=244             cterm=NONE
highlight Constant      ctermfg=186             cterm=NONE
"210
highlight Identifier    ctermfg=117             cterm=NONE
highlight Function      ctermfg=117             cterm=NONE
highlight Statement     ctermfg=210             cterm=bold
" 186 yellow
highlight PreProc       ctermfg=114             cterm=NONE
highlight Type          ctermfg=215             cterm=bold
highlight Special       ctermfg=122             cterm=NONE
highlight Special       ctermfg=180             cterm=NONE
highlight Ignore        ctermfg=241             cterm=NONE
highlight Todo          ctermfg=202 ctermbg=226 cterm=NONE



