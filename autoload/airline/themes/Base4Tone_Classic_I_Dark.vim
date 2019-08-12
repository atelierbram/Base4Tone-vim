scriptencoding utf-8 
" Base4Tone_Classic_I_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_I_Dark#palette = {} 

let s:N1   = [ '#3a403b' , '#7e8b80' , 237 , 244 ] 
let s:N2   = [ '#f6f9f9' , '#576058' , 015 , 240 ] 
let s:N3   = [ '#b8c1fa' , '#3a403b' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_I_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f6f9f9' , '#576058' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#3a403b' , '#aeb8f9' , 237 , 147 ] 
let s:I2 = [ '#f6f9f9' , '#0b891a' , 015 , 030 ] 
let s:I3 = [ '#b8c1fa' , '#3a403b' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f6f9f9' , '#576058' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#4b60e7' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_I_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_I_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.replace.airline_a = [ s:I2[0]   , '#0b891a' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_I_Dark#palette.insert_modified 

let s:V1 = [ '#3a403b' , '#2bda3f' , 237 , 048 ] 
let s:V2 = [ '#f6f9f9' , '#0b891a' , 015 , 030 ] 
let s:V3 = [ '#f6f9f9' , '#3a403b' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f6f9f9' , '#576058' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#576058' , '#3a403b' , 240 , 237, '' ] 
let s:IA2 = [ '#576058' , '#3a403b' , 240 , 237, '' ] 
let s:IA3 = [ '#576058' , '#3a403b' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f6f9f9' , '#576058' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_I_Dark#palette.accents = { 
      \ 'red': [ '#0b891a' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_I_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ebffed' , '#0b891a' , 015 , 030, ''     ], 
      \ [ '#f6f9f9' , '#0da51f' , 015 , 036, ''     ], 
      \ [ '#0b891a' , '#f6f9f9' , bold' ]) 
