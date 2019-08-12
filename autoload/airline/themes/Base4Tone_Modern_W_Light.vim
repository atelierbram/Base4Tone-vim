scriptencoding utf-8 
" Base4Tone_Modern_W_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Modern_W_Light#palette = {} 

let s:N1   = [ '#817479' , '#d1c7cb' , 243 , 251 ] 
let s:N2   = [ '#1c890b' , '#c7bdc1' , 000 , 250 ] 
let s:N3   = [ '#1f970c' , '#e4dde0' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Modern_W_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#1c890b' , '#c7bdc1' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#ffe6ef' , '#3dd425' , 015 , 147 ] 
let s:I2 = [ '#1c890b' , '#3dd425' , 000 , 147 ] 
let s:I3 = [ '#1f970c' , '#e4dde0' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#1c890b' , '#c7bdc1' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#1c890b' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_W_Light#palette.replace = copy(g:airline#themes#Base4Tone_Modern_W_Light#palette.insert) 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.replace.airline_a = [ s:I2[0]   , '#1c890b' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.replace_modified = g:airline#themes#Base4Tone_Modern_W_Light#palette.insert_modified 

let s:V1 = [ '#f9f6f6' , '#39c723' , 015 , 141 ] 
let s:V2 = [ '#1c890b' , '#3dd425' , 000 , 048 ] 
let s:V3 = [ '#1f970c' , '#e4dde0' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#1c890b' , '#c7bdc1' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c7bdc1' , '#e4dde0' , 250 , 253, '' ] 
let s:IA2 = [ '#c7bdc1' , '#e4dde0' , 240 , 253, '' ] 
let s:IA3 = [ '#c7bdc1' , '#e4dde0' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#1c890b' , '#c7bdc1' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Modern_W_Light#palette.accents = { 
      \ 'red': [ '#bd2861' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Modern_W_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ffe6ef' , '#bd2861' , 015 , 030, ''     ], 
      \ [ '#f9f6f6' , '#dd407c' , 015 , 036, ''     ], 
      \ [ '#bd2861' , '#f9f6f6' , bold' ]) 
