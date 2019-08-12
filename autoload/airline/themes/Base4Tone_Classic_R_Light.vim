scriptencoding utf-8 
" Base4Tone_Classic_R_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_R_Light#palette = {} 

let s:N1   = [ '#797481' , '#cbc7d1' , 243 , 251 ] 
let s:N2   = [ '#bd2861' , '#c0bcc7' , 000 , 250 ] 
let s:N3   = [ '#d22d6c' , '#dfdde4' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_R_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#bd2861' , '#c0bcc7' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#f2ebff' , '#f17eaa' , 015 , 147 ] 
let s:I2 = [ '#bd2861' , '#f17eaa' , 000 , 147 ] 
let s:I3 = [ '#d22d6c' , '#dfdde4' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#bd2861' , '#c0bcc7' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#bd2861' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_R_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_R_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.replace.airline_a = [ s:I2[0]   , '#bd2861' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_R_Light#palette.insert_modified 

let s:V1 = [ '#f8f6f9' , '#eb75a2' , 015 , 141 ] 
let s:V2 = [ '#bd2861' , '#f17eaa' , 000 , 048 ] 
let s:V3 = [ '#d22d6c' , '#dfdde4' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#bd2861' , '#c0bcc7' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c0bcc7' , '#dfdde4' , 250 , 253, '' ] 
let s:IA2 = [ '#c0bcc7' , '#dfdde4' , 240 , 253, '' ] 
let s:IA3 = [ '#c0bcc7' , '#dfdde4' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#bd2861' , '#c0bcc7' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_R_Light#palette.accents = { 
      \ 'red': [ '#8049df' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_R_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f2ebff' , '#8049df' , 015 , 030, ''     ], 
      \ [ '#f8f6f9' , '#9263e3' , 015 , 036, ''     ], 
      \ [ '#8049df' , '#f8f6f9' , bold' ]) 
