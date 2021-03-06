scriptencoding utf-8 
" Base4Tone_Modern_W_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Modern_W_Dark#palette = {} 

let s:N1   = [ '#403a3c' , '#8b7e83' , 237 , 244 ] 
let s:N2   = [ '#f9f6f6' , '#60575b' , 015 , 240 ] 
let s:N3   = [ '#78e467' , '#403a3c' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Modern_W_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f9f6f6' , '#60575b' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#403a3c' , '#42da2b' , 237 , 147 ] 
let s:I2 = [ '#f9f6f6' , '#bd2861' , 015 , 030 ] 
let s:I3 = [ '#78e467' , '#403a3c' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f9f6f6' , '#60575b' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#1c890b' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_W_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Modern_W_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.replace.airline_a = [ s:I2[0]   , '#bd2861' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Modern_W_Dark#palette.insert_modified 

let s:V1 = [ '#403a3c' , '#f17eaa' , 237 , 048 ] 
let s:V2 = [ '#f9f6f6' , '#bd2861' , 015 , 030 ] 
let s:V3 = [ '#f9f6f6' , '#403a3c' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f9f6f6' , '#60575b' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#60575b' , '#403a3c' , 240 , 237, '' ] 
let s:IA2 = [ '#60575b' , '#403a3c' , 240 , 237, '' ] 
let s:IA3 = [ '#60575b' , '#403a3c' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f9f6f6' , '#60575b' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_W_Dark#palette.accents = { 
      \ 'red': [ '#bd2861' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Modern_W_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ffe6ef' , '#bd2861' , 015 , 030, ''     ], 
      \ [ '#f9f6f6' , '#dd407c' , 015 , 036, ''     ], 
      \ [ '#bd2861' , '#f9f6f6' , bold' ]) 
