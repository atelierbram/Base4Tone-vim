scriptencoding utf-8 
" Base4Tone_Modern_N_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Modern_N_Dark#palette = {} 

let s:N1   = [ '#344046' , '#728997' , 237 , 244 ] 
let s:N2   = [ '#f6f6f9' , '#4e5f6a' , 015 , 240 ] 
let s:N3   = [ '#f5a3c2' , '#344046' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Modern_N_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f6f6f9' , '#4e5f6a' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#344046' , '#f391b6' , 237 , 147 ] 
let s:I2 = [ '#f6f6f9' , '#037abf' , 015 , 030 ] 
let s:I3 = [ '#f5a3c2' , '#344046' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f6f6f9' , '#4e5f6a' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#bd2861' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_N_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Modern_N_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.replace.airline_a = [ s:I2[0]   , '#037abf' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Modern_N_Dark#palette.insert_modified 

let s:V1 = [ '#344046' , '#64c1f7' , 237 , 048 ] 
let s:V2 = [ '#f6f6f9' , '#037abf' , 015 , 030 ] 
let s:V3 = [ '#f6f6f9' , '#344046' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f6f6f9' , '#4e5f6a' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#4e5f6a' , '#344046' , 240 , 237, '' ] 
let s:IA2 = [ '#4e5f6a' , '#344046' , 240 , 237, '' ] 
let s:IA3 = [ '#4e5f6a' , '#344046' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f6f6f9' , '#4e5f6a' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_N_Dark#palette.accents = { 
      \ 'red': [ '#037abf' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Modern_N_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f0f9ff' , '#037abf' , 015 , 030, ''     ], 
      \ [ '#f6f6f9' , '#0c95e4' , 015 , 036, ''     ], 
      \ [ '#037abf' , '#f6f6f9' , bold' ]) 
