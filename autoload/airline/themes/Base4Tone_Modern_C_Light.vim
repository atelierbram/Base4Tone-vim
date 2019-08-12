scriptencoding utf-8 
" Base4Tone_Modern_C_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Modern_C_Light#palette = {} 

let s:N1   = [ '#877d6e' , '#d2cdc6' , 243 , 251 ] 
let s:N2   = [ '#4b60e7' , '#c9c3bb' , 000 , 250 ] 
let s:N3   = [ '#5468e8' , '#e5e1dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Modern_C_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#4b60e7' , '#c9c3bb' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#fff5e6' , '#a0acf8' , 015 , 147 ] 
let s:I2 = [ '#4b60e7' , '#a0acf8' , 000 , 147 ] 
let s:I3 = [ '#5468e8' , '#e5e1dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#4b60e7' , '#c9c3bb' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#4b60e7' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_C_Light#palette.replace = copy(g:airline#themes#Base4Tone_Modern_C_Light#palette.insert) 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.replace.airline_a = [ s:I2[0]   , '#4b60e7' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.replace_modified = g:airline#themes#Base4Tone_Modern_C_Light#palette.insert_modified 

let s:V1 = [ '#f6f9f8' , '#929ff7' , 015 , 141 ] 
let s:V2 = [ '#4b60e7' , '#a0acf8' , 000 , 048 ] 
let s:V3 = [ '#5468e8' , '#e5e1dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#4b60e7' , '#c9c3bb' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c9c3bb' , '#e5e1dc' , 250 , 253, '' ] 
let s:IA2 = [ '#c9c3bb' , '#e5e1dc' , 240 , 253, '' ] 
let s:IA3 = [ '#c9c3bb' , '#e5e1dc' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#4b60e7' , '#c9c3bb' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_C_Light#palette.accents = { 
      \ 'red': [ '#9f6404' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Modern_C_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#fff5e6' , '#9f6404' , 015 , 030, ''     ], 
      \ [ '#f6f9f8' , '#c27905' , 015 , 036, ''     ], 
      \ [ '#9f6404' , '#f6f9f8' , bold' ]) 
