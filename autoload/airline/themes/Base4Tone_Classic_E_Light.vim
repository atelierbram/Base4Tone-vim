scriptencoding utf-8 
" Base4Tone_Classic_E_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_E_Light#palette = {} 

let s:N1   = [ '#83856f' , '#d1d2c6' , 243 , 251 ] 
let s:N2   = [ '#047b8b' , '#c7c9bb' , 000 , 250 ] 
let s:N3   = [ '#048495' , '#e4e5dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_E_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#047b8b' , '#c7c9bb' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#fcffe6' , '#3ccadd' , 015 , 147 ] 
let s:I2 = [ '#047b8b' , '#3ccadd' , 000 , 147 ] 
let s:I3 = [ '#048495' , '#e4e5dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#047b8b' , '#c7c9bb' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#047b8b' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_E_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_E_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.replace.airline_a = [ s:I2[0]   , '#047b8b' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_E_Light#palette.insert_modified 

let s:V1 = [ '#f7f9f6' , '#25bcd0' , 015 , 141 ] 
let s:V2 = [ '#047b8b' , '#3ccadd' , 000 , 048 ] 
let s:V3 = [ '#048495' , '#e4e5dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#047b8b' , '#c7c9bb' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c7c9bb' , '#e4e5dc' , 250 , 253, '' ] 
let s:IA2 = [ '#c7c9bb' , '#e4e5dc' , 240 , 253, '' ] 
let s:IA3 = [ '#c7c9bb' , '#e4e5dc' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#047b8b' , '#c7c9bb' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_E_Light#palette.accents = { 
      \ 'red': [ '#7b8b04' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_E_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#fcffe6' , '#7b8b04' , 015 , 030, ''     ], 
      \ [ '#f7f9f6' , '#91a404' , 015 , 036, ''     ], 
      \ [ '#7b8b04' , '#f7f9f6' , bold' ]) 
