scriptencoding utf-8 
" Base4Tone_Classic_A_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_A_Light#palette = {} 

let s:N1   = [ '#847371' , '#d2c7c6' , 243 , 251 ] 
let s:N2   = [ '#7b8b04' , '#c9bdbb' , 000 , 250 ] 
let s:N3   = [ '#849504' , '#e5dddc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_A_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#7b8b04' , '#c9bdbb' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#ffe8e6' , '#c5dc18' , 015 , 147 ] 
let s:I2 = [ '#7b8b04' , '#c5dc18' , 000 , 147 ] 
let s:I3 = [ '#849504' , '#e5dddc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#7b8b04' , '#c9bdbb' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#7b8b04' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_A_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_A_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.replace.airline_a = [ s:I2[0]   , '#7b8b04' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_A_Light#palette.insert_modified 

let s:V1 = [ '#f9f8f6' , '#b9cf17' , 015 , 141 ] 
let s:V2 = [ '#7b8b04' , '#c5dc18' , 000 , 048 ] 
let s:V3 = [ '#849504' , '#e5dddc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#7b8b04' , '#c9bdbb' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c9bdbb' , '#e5dddc' , 250 , 253, '' ] 
let s:IA2 = [ '#c9bdbb' , '#e5dddc' , 240 , 253, '' ] 
let s:IA3 = [ '#c9bdbb' , '#e5dddc' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#7b8b04' , '#c9bdbb' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_A_Light#palette.accents = { 
      \ 'red': [ '#bd3a28' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_A_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ffe8e6' , '#bd3a28' , 015 , 030, ''     ], 
      \ [ '#f9f8f6' , '#de5745' , 015 , 036, ''     ], 
      \ [ '#bd3a28' , '#f9f8f6' , bold' ]) 
