scriptencoding utf-8 
" Base4Tone_Classic_A_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_A_Dark#palette = {} 

let s:N1   = [ '#423938' , '#8e7d7b' , 237 , 244 ] 
let s:N2   = [ '#f9f8f6' , '#635654' , 015 , 240 ] 
let s:N3   = [ '#dced5a' , '#423938' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_A_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f9f8f6' , '#635654' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#423938' , '#cee61a' , 237 , 147 ] 
let s:I2 = [ '#f9f8f6' , '#bd3a28' , 015 , 030 ] 
let s:I3 = [ '#dced5a' , '#423938' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f9f8f6' , '#635654' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#7b8b04' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_A_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_A_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.replace.airline_a = [ s:I2[0]   , '#bd3a28' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_A_Dark#palette.insert_modified 

let s:V1 = [ '#423938' , '#f18c7e' , 237 , 048 ] 
let s:V2 = [ '#f9f8f6' , '#bd3a28' , 015 , 030 ] 
let s:V3 = [ '#f9f8f6' , '#423938' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f9f8f6' , '#635654' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#635654' , '#423938' , 240 , 237, '' ] 
let s:IA2 = [ '#635654' , '#423938' , 240 , 237, '' ] 
let s:IA3 = [ '#635654' , '#423938' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f9f8f6' , '#635654' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_A_Dark#palette.accents = { 
      \ 'red': [ '#bd3a28' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_A_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ffe8e6' , '#bd3a28' , 015 , 030, ''     ], 
      \ [ '#f9f8f6' , '#de5745' , 015 , 036, ''     ], 
      \ [ '#bd3a28' , '#f9f8f6' , bold' ]) 
