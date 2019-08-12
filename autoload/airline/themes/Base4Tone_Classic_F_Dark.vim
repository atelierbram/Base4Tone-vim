scriptencoding utf-8 
" Base4Tone_Classic_F_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_F_Dark#palette = {} 

let s:N1   = [ '#3f4238' , '#878e7b' , 237 , 244 ] 
let s:N2   = [ '#f6f9f7' , '#5e6354' , 015 , 240 ] 
let s:N3   = [ '#99d6fa' , '#3f4238' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_F_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f6f9f7' , '#5e6354' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#3f4238' , '#81cdf8' , 237 , 147 ] 
let s:I2 = [ '#f6f9f7' , '#598b04' , 015 , 030 ] 
let s:I3 = [ '#99d6fa' , '#3f4238' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f6f9f7' , '#5e6354' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#037abf' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_F_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_F_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.replace.airline_a = [ s:I2[0]   , '#598b04' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_F_Dark#palette.insert_modified 

let s:V1 = [ '#3f4238' , '#95dc18' , 237 , 048 ] 
let s:V2 = [ '#f6f9f7' , '#598b04' , 015 , 030 ] 
let s:V3 = [ '#f6f9f7' , '#3f4238' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f6f9f7' , '#5e6354' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#5e6354' , '#3f4238' , 240 , 237, '' ] 
let s:IA2 = [ '#5e6354' , '#3f4238' , 240 , 237, '' ] 
let s:IA3 = [ '#5e6354' , '#3f4238' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f6f9f7' , '#5e6354' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_F_Dark#palette.accents = { 
      \ 'red': [ '#598b04' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_F_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f6ffe6' , '#598b04' , 015 , 030, ''     ], 
      \ [ '#f6f9f7' , '#69a404' , 015 , 036, ''     ], 
      \ [ '#598b04' , '#f6f9f7' , bold' ]) 
