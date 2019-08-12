scriptencoding utf-8 
" Base4Tone_Classic_F_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_F_Light#palette = {} 

let s:N1   = [ '#7d8471' , '#ced2c6' , 243 , 251 ] 
let s:N2   = [ '#037abf' , '#c4c9bb' , 000 , 250 ] 
let s:N3   = [ '#0580c7' , '#e2e5dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_F_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#037abf' , '#c4c9bb' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#f6ffe6' , '#64c1f7' , 015 , 147 ] 
let s:I2 = [ '#037abf' , '#64c1f7' , 000 , 147 ] 
let s:I3 = [ '#0580c7' , '#e2e5dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#037abf' , '#c4c9bb' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#037abf' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_F_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_F_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.replace.airline_a = [ s:I2[0]   , '#037abf' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_F_Light#palette.insert_modified 

let s:V1 = [ '#f6f9f7' , '#47b5f5' , 015 , 141 ] 
let s:V2 = [ '#037abf' , '#64c1f7' , 000 , 048 ] 
let s:V3 = [ '#0580c7' , '#e2e5dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#037abf' , '#c4c9bb' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c4c9bb' , '#e2e5dc' , 250 , 253, '' ] 
let s:IA2 = [ '#c4c9bb' , '#e2e5dc' , 240 , 253, '' ] 
let s:IA3 = [ '#c4c9bb' , '#e2e5dc' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#037abf' , '#c4c9bb' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_F_Light#palette.accents = { 
      \ 'red': [ '#598b04' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_F_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f6ffe6' , '#598b04' , 015 , 030, ''     ], 
      \ [ '#f6f9f7' , '#69a404' , 015 , 036, ''     ], 
      \ [ '#598b04' , '#f6f9f7' , bold' ]) 
