scriptencoding utf-8 
" Base4Tone_Classic_U_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_U_Light#palette = {} 

let s:N1   = [ '#81747f' , '#d1c7d0' , 243 , 251 ] 
let s:N2   = [ '#b15925' , '#c7bcc6' , 000 , 250 ] 
let s:N3   = [ '#c26129' , '#e4dde3' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_U_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#b15925' , '#c7bcc6' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#ffe6fc' , '#ee9968' , 015 , 147 ] 
let s:I2 = [ '#b15925' , '#ee9968' , 000 , 147 ] 
let s:I3 = [ '#c26129' , '#e4dde3' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#b15925' , '#c7bcc6' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#b15925' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_U_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_U_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.replace.airline_a = [ s:I2[0]   , '#b15925' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_U_Light#palette.insert_modified 

let s:V1 = [ '#f9f6f6' , '#e78b55' , 015 , 141 ] 
let s:V2 = [ '#b15925' , '#ee9968' , 000 , 048 ] 
let s:V3 = [ '#c26129' , '#e4dde3' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#b15925' , '#c7bcc6' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c7bcc6' , '#e4dde3' , 250 , 253, '' ] 
let s:IA2 = [ '#c7bcc6' , '#e4dde3' , 240 , 253, '' ] 
let s:IA3 = [ '#c7bcc6' , '#e4dde3' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#b15925' , '#c7bcc6' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_U_Light#palette.accents = { 
      \ 'red': [ '#bd28ac' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_U_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ffe6fc' , '#bd28ac' , 015 , 030, ''     ], 
      \ [ '#f9f6f6' , '#dd40cb' , 015 , 036, ''     ], 
      \ [ '#bd28ac' , '#f9f6f6' , bold' ]) 
