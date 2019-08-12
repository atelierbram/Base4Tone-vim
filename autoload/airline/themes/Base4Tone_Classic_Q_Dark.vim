scriptencoding utf-8 
" Base4Tone_Classic_Q_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_Q_Dark#palette = {} 

let s:N1   = [ '#3b3a40' , '#807e8b' , 237 , 244 ] 
let s:N2   = [ '#f8f6f9' , '#585760' , 015 , 240 ] 
let s:N3   = [ '#f5a3d7' , '#3b3a40' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f8f6f9' , '#585760' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#3b3a40' , '#f391cf' , 237 , 147 ] 
let s:I2 = [ '#f8f6f9' , '#6656e1' , 015 , 030 ] 
let s:I3 = [ '#f5a3d7' , '#3b3a40' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f8f6f9' , '#585760' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#bd2887' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_Q_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.replace.airline_a = [ s:I2[0]   , '#6656e1' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_Q_Dark#palette.insert_modified 

let s:V1 = [ '#3b3a40' , '#aba1f7' , 237 , 048 ] 
let s:V2 = [ '#f8f6f9' , '#6656e1' , 015 , 030 ] 
let s:V3 = [ '#f8f6f9' , '#3b3a40' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f8f6f9' , '#585760' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#585760' , '#3b3a40' , 240 , 237, '' ] 
let s:IA2 = [ '#585760' , '#3b3a40' , 240 , 237, '' ] 
let s:IA3 = [ '#585760' , '#3b3a40' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f8f6f9' , '#585760' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.accents = { 
      \ 'red': [ '#6656e1' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_Q_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f1f0ff' , '#6656e1' , 015 , 030, ''     ], 
      \ [ '#f8f6f9' , '#7e70e6' , 015 , 036, ''     ], 
      \ [ '#6656e1' , '#f8f6f9' , bold' ]) 
