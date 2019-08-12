scriptencoding utf-8 
" Base4Tone_Classic_L_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_L_Light#palette = {} 

let s:N1   = [ '#6d8884' , '#c6d2d0' , 243 , 251 ] 
let s:N2   = [ '#6656e1' , '#bbc9c7' , 000 , 250 ] 
let s:N3   = [ '#6e5fe3' , '#dce5e4' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_L_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#6656e1' , '#bbc9c7' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#ebfffc' , '#aba1f7' , 015 , 147 ] 
let s:I2 = [ '#6656e1' , '#aba1f7' , 000 , 147 ] 
let s:I3 = [ '#6e5fe3' , '#dce5e4' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#6656e1' , '#bbc9c7' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#6656e1' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_L_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_L_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.replace.airline_a = [ s:I2[0]   , '#6656e1' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_L_Light#palette.insert_modified 

let s:V1 = [ '#f6f7f9' , '#a095f3' , 015 , 141 ] 
let s:V2 = [ '#6656e1' , '#aba1f7' , 000 , 048 ] 
let s:V3 = [ '#6e5fe3' , '#dce5e4' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#6656e1' , '#bbc9c7' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#bbc9c7' , '#dce5e4' , 250 , 253, '' ] 
let s:IA2 = [ '#bbc9c7' , '#dce5e4' , 240 , 253, '' ] 
let s:IA3 = [ '#bbc9c7' , '#dce5e4' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#6656e1' , '#bbc9c7' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_L_Light#palette.accents = { 
      \ 'red': [ '#00806f' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_L_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ebfffc' , '#00806f' , 015 , 030, ''     ], 
      \ [ '#f6f7f9' , '#0d9c89' , 015 , 036, ''     ], 
      \ [ '#00806f' , '#f6f7f9' , bold' ]) 
