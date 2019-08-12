scriptencoding utf-8 
" Base4Tone_Classic_S_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_S_Dark#palette = {} 

let s:N1   = [ '#3e3a40' , '#867e8b' , 237 , 244 ] 
let s:N2   = [ '#f9f6f8' , '#5d5760' , 015 , 240 ] 
let s:N3   = [ '#f5ada3' , '#3e3a40' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_S_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f9f6f8' , '#5d5760' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#3e3a40' , '#f39c91' , 237 , 147 ] 
let s:I2 = [ '#f9f6f8' , '#9939d5' , 015 , 030 ] 
let s:I3 = [ '#f5ada3' , '#3e3a40' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f9f6f8' , '#5d5760' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#bd3a28' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_S_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_S_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.replace.airline_a = [ s:I2[0]   , '#9939d5' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_S_Dark#palette.insert_modified 

let s:V1 = [ '#3e3a40' , '#c988f2' , 237 , 048 ] 
let s:V2 = [ '#f9f6f8' , '#9939d5' , 015 , 030 ] 
let s:V3 = [ '#f9f6f8' , '#3e3a40' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f9f6f8' , '#5d5760' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#5d5760' , '#3e3a40' , 240 , 237, '' ] 
let s:IA2 = [ '#5d5760' , '#3e3a40' , 240 , 237, '' ] 
let s:IA3 = [ '#5d5760' , '#3e3a40' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f9f6f8' , '#5d5760' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_S_Dark#palette.accents = { 
      \ 'red': [ '#9939d5' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_S_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f5e6ff' , '#9939d5' , 015 , 030, ''     ], 
      \ [ '#f9f6f8' , '#aa52e0' , 015 , 036, ''     ], 
      \ [ '#9939d5' , '#f9f6f8' , bold' ]) 
