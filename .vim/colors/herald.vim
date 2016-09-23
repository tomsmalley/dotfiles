" Vim color file - herald
" Generated by http://bytefluent.com/vivify 2014-12-21
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "herald"

hi IncSearch guifg=NONE guibg=#FF9E16 guisp=#FF9E16 gui=NONE ctermfg=NONE ctermbg=208 cterm=NONE
"hi WildMenu -- no settings --
hi SignColumn guifg=#BF81FA guibg=#000000 guisp=#000000 gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi SpecialComment guifg=#FFB539 guibg=#000000 guisp=#000000 gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi Typedef guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Title guifg=#6DF584 guibg=#000000 guisp=#000000 gui=bold ctermfg=84 ctermbg=234 cterm=bold
hi Folded guifg=#003DAD guibg=#001336 guisp=#001336 gui=NONE ctermfg=25 ctermbg=17 cterm=NONE
hi PreCondit guifg=#BF81FA guibg=#000000 guisp=#000000 gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi Include guifg=#BF81FA guibg=#000000 guisp=#000000 gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi TabLineSel guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi StatusLineNC guifg=#696567 guibg=#25365a guisp=#25365a gui=NONE ctermfg=242 ctermbg=17 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#FC6984 guibg=#000000 guisp=#000000 gui=NONE ctermfg=204 ctermbg=234 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#ED9000 guibg=#12457D guisp=#12457D gui=underline ctermfg=208 ctermbg=6 cterm=underline
hi ErrorMsg guifg=#D0D0D0 guibg=#A32024 guisp=#A32024 gui=NONE ctermfg=252 ctermbg=124 cterm=NONE
hi Ignore guifg=#000000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=234 ctermbg=234 cterm=NONE
hi Debug guifg=#FFB539 guibg=#000000 guisp=#000000 gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#430300 guisp=#430300 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Identifier guifg=#70BDF1 guibg=#000000 guisp=#000000 gui=NONE ctermfg=117 ctermbg=234 cterm=NONE
hi SpecialChar guifg=#FFB539 guibg=#000000 guisp=#000000 gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi Conditional guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi StorageClass guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Todo guifg=#FC4234 guibg=#000000 guisp=#000000 gui=bold ctermfg=13 ctermbg=234 cterm=bold
hi Special guifg=#FFB539 guibg=#000000 guisp=#000000 gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi LineNr guifg=#696567 guibg=#000000 guisp=#000000 gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#696567 guibg=#000000 guisp=#000000 gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi Normal guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=NONE ctermfg=252 ctermbg=234 cterm=NONE
hi Label guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#4C0200 guibg=#F17A00 guisp=#F17A00 gui=NONE ctermfg=52 ctermbg=208 cterm=NONE
hi Search guifg=NONE guibg=#FF9E16 guisp=#FF9E16 gui=NONE ctermfg=NONE ctermbg=208 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#FFEC48 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Statement guifg=#E783E9 guibg=#000000 guisp=#000000 gui=NONE ctermfg=176 ctermbg=234 cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#696567 guibg=#000000 guisp=#000000 gui=NONE ctermfg=242 ctermbg=234 cterm=NONE
hi Character guifg=#6DF584 guibg=#000000 guisp=#000000 gui=NONE ctermfg=84 ctermbg=234 cterm=NONE
"hi Float -- no settings --
hi Number guifg=#6DF584 guibg=#000000 guisp=#000000 gui=NONE ctermfg=84 ctermbg=234 cterm=NONE
hi Boolean guifg=#E783E9 guibg=#000000 guisp=#000000 gui=NONE ctermfg=176 ctermbg=234 cterm=NONE
hi Operator guifg=#FC6984 guibg=#000000 guisp=#000000 gui=NONE ctermfg=204 ctermbg=234 cterm=NONE
hi CursorLine guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi Union -- no settings --
hi TabLineFill guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Question guifg=#FFA500 guibg=#000000 guisp=#000000 gui=NONE ctermfg=214 ctermbg=234 cterm=NONE
hi WarningMsg guifg=#000000 guibg=#FFA500 guisp=#FFA500 gui=NONE ctermfg=NONE ctermbg=214 cterm=NONE
hi VisualNOS guifg=#696567 guibg=#000000 guisp=#000000 gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#ED9000 guibg=#081F38 guisp=#081F38 gui=NONE ctermfg=208 ctermbg=17 cterm=NONE
hi ModeMsg guifg=#FFA500 guibg=#000000 guisp=#000000 gui=NONE ctermfg=214 ctermbg=234 cterm=NONE
hi CursorColumn guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Define guifg=#BF81FA guibg=#000000 guisp=#000000 gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi Function guifg=#90CBF1 guibg=#000000 guisp=#000000 gui=NONE ctermfg=117 ctermbg=234 cterm=NONE
hi FoldColumn guifg=#003DAD guibg=#001336 guisp=#001336 gui=NONE ctermfg=25 ctermbg=17 cterm=NONE
hi PreProc guifg=#BF81FA guibg=#000000 guisp=#000000 gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#FFB539 guibg=#000000 guisp=#000000 gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#FFA500 guibg=#000000 guisp=#000000 gui=NONE ctermfg=214 ctermbg=234 cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Exception guifg=#FC4234 guibg=#000000 guisp=#000000 gui=NONE ctermfg=13 ctermbg=234 cterm=NONE
hi Keyword guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Type guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi DiffChange guifg=#A36000 guibg=#0B294A guisp=#0B294A gui=NONE ctermfg=130 ctermbg=17 cterm=NONE
hi Cursor guifg=#000000 guibg=#FFEE68 guisp=#FFEE68 gui=NONE ctermfg=234 ctermbg=227 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#FC4234 guibg=#000000 guisp=#000000 gui=NONE ctermfg=13 ctermbg=234 cterm=NONE
hi PMenu guifg=#660300 guibg=#140100 guisp=#140100 gui=NONE ctermfg=52 ctermbg=52 cterm=NONE
hi SpecialKey guifg=#E783E9 guibg=#000000 guisp=#000000 gui=NONE ctermfg=176 ctermbg=234 cterm=NONE
hi Constant guifg=#6DF584 guibg=#000000 guisp=#000000 gui=NONE ctermfg=84 ctermbg=234 cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#FFB539 guibg=#000000 guisp=#000000 gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi String guifg=#FFB539 guibg=#000000 guisp=#000000 gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#720300 guisp=#720300 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi MatchParen guifg=#000000 guibg=#FFA500 guisp=#FFA500 gui=NONE ctermfg=234 ctermbg=214 cterm=NONE
"hi LocalVariable -- no settings --
hi Repeat guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Structure guifg=#FFEE68 guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Macro guifg=#BF81FA guibg=#000000 guisp=#000000 gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi Underlined guifg=#FC4234 guibg=#000000 guisp=#000000 gui=underline ctermfg=13 ctermbg=234 cterm=underline
hi DiffAdd guifg=#ED9000 guibg=#006124 guisp=#006124 gui=NONE ctermfg=208 ctermbg=22 cterm=NONE
hi TabLine guifg=#000000 guibg=#141414 guisp=#141414 gui=NONE ctermfg=234 ctermbg=233 cterm=NONE
hi cursorim guifg=#000000 guibg=#FFEE68 guisp=#FFEE68 gui=NONE ctermfg=234 ctermbg=227 cterm=NONE
"hi clear -- no settings --
hi mbenormal guifg=#afced2 guibg=#3f3331 guisp=#3f3331 gui=NONE ctermfg=152 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#bcd37f guibg=#224003 guisp=#224003 gui=NONE ctermfg=150 ctermbg=58 cterm=NONE
hi doxygenspecial guifg=#82d7e6 guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#73e600 guibg=#3f3331 guisp=#3f3331 gui=NONE ctermfg=76 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#73e600 guibg=#8f7051 guisp=#8f7051 gui=NONE ctermfg=76 ctermbg=95 cterm=NONE
hi doxygenparam guifg=#82d7e6 guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#82d7e6 guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#82d7e6 guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#bcd37f guibg=#224003 guisp=#224003 gui=NONE ctermfg=150 ctermbg=58 cterm=NONE
hi cformat guifg=#bcd37f guibg=#224003 guisp=#224003 gui=NONE ctermfg=150 ctermbg=58 cterm=NONE
hi lcursor guifg=#224003 guibg=#bb87ff guisp=#bb87ff gui=NONE ctermfg=58 ctermbg=141 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#0dadaa guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#e6a37c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#57e6da guibg=NONE guisp=NONE gui=NONE ctermfg=80 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cdcdd2 guibg=#8f7051 guisp=#8f7051 gui=NONE ctermfg=252 ctermbg=95 cterm=NONE
hi user2 guifg=#88a170 guibg=#5e4c3f guisp=#5e4c3f gui=NONE ctermfg=108 ctermbg=95 cterm=NONE
hi user1 guifg=#e1e1e6 guibg=#5e4c3f guisp=#5e4c3f gui=NONE ctermfg=254 ctermbg=95 cterm=NONE
hi doxygenspecialonelinedesc guifg=#0dadaa guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#22a8ad guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#bcd37f guibg=#224003 guisp=#224003 gui=NONE ctermfg=150 ctermbg=58 cterm=NONE
hi pythonimport guifg=#4a0193 guibg=NONE guisp=NONE gui=NONE ctermfg=54 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#e6e6e6 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#4a0193 guibg=NONE guisp=NONE gui=NONE ctermfg=54 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#a38280 guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#4a0193 guibg=NONE guisp=NONE gui=NONE ctermfg=54 ctermbg=NONE cterm=NONE
hi stringdelimiter guifg=#344568 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=#4be000 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi string guifg=#6b83ad guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi constant guifg=#4dd298 guibg=NONE guisp=NONE gui=NONE ctermfg=79 ctermbg=NONE cterm=NONE
hi normal guifg=#d1dfe6 guibg=#000000 guisp=#151515 gui=NONE ctermfg=152 ctermbg=233 cterm=NONE
hi rubyinstancevariable guifg=#e6c8a4 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi rubyclass guifg=#9a455a guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi identifier guifg=#e6d2b0 guibg=NONE guisp=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
hi comment guifg=#8b8b8b guibg=NONE guisp=NONE gui=italic ctermfg=245 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter guifg=#516300 guibg=NONE guisp=NONE gui=NONE ctermfg=58 ctermbg=NONE cterm=NONE
hi rubyregexpspecial guifg=#3da600 guibg=NONE guisp=NONE gui=NONE ctermfg=70 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#55e061 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi function guifg=#70e6e6 guibg=NONE guisp=NONE gui=NONE ctermfg=80 ctermbg=NONE cterm=NONE
hi directory guifg=#87c9dc guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#d67779 guibg=NONE guisp=NONE gui=NONE ctermfg=174 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=#c7757c guibg=NONE guisp=NONE gui=NONE ctermfg=174 ctermbg=NONE cterm=NONE
hi rubyidentifier guifg=#e6c8a4 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi pythonbuiltin guifg=#96838f guibg=NONE guisp=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
hi phpstringdouble guifg=#e3e5e6 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#e3e5e6 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi javascriptstrings guifg=#e3e5e6 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#e3e5e6 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi phpstringsingle guifg=#e3e5e6 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlbold guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#D0D0D0 guibg=#000000 guisp=#000000 gui=underline ctermfg=252 ctermbg=234 cterm=underline
"hi default -- no settings --
hi condtional guifg=#e680c4 guibg=NONE guisp=NONE gui=NONE ctermfg=175 ctermbg=NONE cterm=NONE
