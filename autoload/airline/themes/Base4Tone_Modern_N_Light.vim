scriptencoding utf-8 
" Base4Tone_Modern_N_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Modern_N_Light#palette = {} 

let s:N1   = [ '#687f8d' , '#c4ced4' , 243 , 251 ] 
let s:N2   = [ '#bd2861' , '#b9c4cb' , 000 , 250 ] 
let s:N3   = [ '#d22d6c' , '#dce2e5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Modern_N_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#bd2861' , '#b9c4cb' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#f0f9ff' , '#f17eaa' , 015 , 147 ] 
let s:I2 = [ '#bd2861' , '#f17eaa' , 000 , 147 ] 
let s:I3 = [ '#d22d6c' , '#dce2e5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#bd2861' , '#b9c4cb' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#bd2861' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_N_Light#palette.replace = copy(g:airline#themes#Base4Tone_Modern_N_Light#palette.insert) 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.replace.airline_a = [ s:I2[0]   , '#bd2861' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.replace_modified = g:airline#themes#Base4Tone_Modern_N_Light#palette.insert_modified 

let s:V1 = [ '#f6f6f9' , '#eb75a2' , 015 , 141 ] 
let s:V2 = [ '#bd2861' , '#f17eaa' , 000 , 048 ] 
let s:V3 = [ '#d22d6c' , '#dce2e5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#bd2861' , '#b9c4cb' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#b9c4cb' , '#dce2e5' , 250 , 253, '' ] 
let s:IA2 = [ '#b9c4cb' , '#dce2e5' , 240 , 253, '' ] 
let s:IA3 = [ '#b9c4cb' , '#dce2e5' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#bd2861' , '#b9c4cb' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_N_Light#palette.accents = { 
      \ 'red': [ '#037abf' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Modern_N_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f0f9ff' , '#037abf' , 015 , 030, ''     ], 
      \ [ '#f6f6f9' , '#0c95e4' , 015 , 036, ''     ], 
      \ [ '#037abf' , '#f6f6f9' , bold' ]) 
