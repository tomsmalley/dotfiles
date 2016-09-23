let g:airline#themes#desertEx#palette = {}

let g:airline#themes#desertEx#palette.accents = {
      \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
      \ }


" Normal mode
let s:N1 = [ '#080808' , '#87d7ff' , 232 , 117 ] " mode
let s:N2 = [ '#f8f8f0' , '#232526' , 253 , 236 ] " info
let s:N3 = [ '#f8f8f0' , '#465457' , 253 , 234 ] " statusline

let g:airline#themes#desertEx#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#desertEx#palette.normal_modified = {
      \ 'airline_c': [ '#080808' , '#87d7ff' , 253 , 236 , '' ] ,
      \ }


" Insert mode
let s:I1 = [ '#080808' , '#87d787' , 232 , 114 ]
let s:I2 = [ '#f8f8f0' , '#232526' , 253 , 236 ]
let s:I3 = [ '#f8f8f0' , '#465457' , 253 , 234 ]

let g:airline#themes#desertEx#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#desertEx#palette.insert_modified = {
      \ 'airline_c': [ '#080808' , '#87d787' , 253 , 236 , '' ] ,
      \ }


" Replace mode
let g:airline#themes#desertEx#palette.replace = copy(g:airline#themes#desertEx#palette.insert)
let g:airline#themes#desertEx#palette.replace.airline_a = [ s:I1[0]   , '#ef5939' , s:I1[2] , 166     , ''     ]
let g:airline#themes#desertEx#palette.replace_modified = {
      \ 'airline_c': [ '#080808' , '#ef5939' , 253 , 236 , '' ] ,
      \ }


" Visual mode
let s:V1 = [ '#080808' , '#fd971f' , 232 , 210 ]
let s:V2 = [ '#f8f8f0' , '#232526' , 253 , 236 ]
let s:V3 = [ '#f8f8f0' , '#465457' , 253 , 234 ]

let g:airline#themes#desertEx#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#desertEx#palette.visual_modified = {
      \ 'airline_c': [ '#080808' , '#fd971f' , 253 , 236 , '' ] ,
      \ }


" Inactive
let s:IA = [ '#1b1d1e' , '#465457' , 233 , 67 , '' ]
let g:airline#themes#desertEx#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#desertEx#palette.inactive_modified = {
      \ 'airline_c': [ '#f8f8f0' , ''        , 253 , ''  , '' ] ,
      \ }


" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#desertEx#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f0' , '#465457' , 253 , 67  , ''     ] ,
      \ [ '#f8f8f0' , '#232526' , 253 , 16  , ''     ] ,
      \ [ '#080808' , '#e6db74' , 232 , 144 , 'bold' ] )

