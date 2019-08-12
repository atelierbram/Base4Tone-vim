scriptencoding utf-8 
" Base4Tone_Classic_I_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_I_Light#palette = {} 

let s:N1   = [ '#748176' , '#c8d0c9' , 243 , 251 ] 
let s:N2   = [ '#4b60e7' , '#bec6bf' , 000 , 250 ] 
let s:N3   = [ '#5468e8' , '#dde3de' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_I_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#4b60e7' , '#bec6bf' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#ebffed' , '#a0acf8' , 015 , 147 ] 
let s:I2 = [ '#4b60e7' , '#a0acf8' , 000 , 147 ] 
let s:I3 = [ '#5468e8' , '#dde3de' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#4b60e7' , '#bec6bf' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#4b60e7' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_I_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_I_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.replace.airline_a = [ s:I2[0]   , '#4b60e7' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_I_Light#palette.insert_modified 

let s:V1 = [ '#f6f9f9' , '#929ff7' , 015 , 141 ] 
let s:V2 = [ '#4b60e7' , '#a0acf8' , 000 , 048 ] 
let s:V3 = [ '#5468e8' , '#dde3de' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#4b60e7' , '#bec6bf' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#bec6bf' , '#dde3de' , 250 , 253, '' ] 
let s:IA2 = [ '#bec6bf' , '#dde3de' , 240 , 253, '' ] 
let s:IA3 = [ '#bec6bf' , '#dde3de' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#4b60e7' , '#bec6bf' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_I_Light#palette.accents = { 
      \ 'red': [ '#0b891a' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_I_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ebffed' , '#0b891a' , 015 , 030, ''     ], 
      \ [ '#f6f9f9' , '#0da51f' , 015 , 036, ''     ], 
      \ [ '#0b891a' , '#f6f9f9' , bold' ]) 
