scriptencoding utf-8 
" Base4Tone_Classic_O_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_O_Light#palette = {} 

let s:N1   = [ '#67768e' , '#c4cad4' , 243 , 251 ] 
let s:N2   = [ '#9939d5' , '#b8c0cc' , 000 , 250 ] 
let s:N3   = [ '#9e42d7' , '#dcdfe5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_O_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#9939d5' , '#b8c0cc' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#f0f6ff' , '#c988f2' , 015 , 147 ] 
let s:I2 = [ '#9939d5' , '#c988f2' , 000 , 147 ] 
let s:I3 = [ '#9e42d7' , '#dcdfe5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#9939d5' , '#b8c0cc' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#9939d5' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_O_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_O_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.replace.airline_a = [ s:I2[0]   , '#9939d5' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_O_Light#palette.insert_modified 

let s:V1 = [ '#f6f6f9' , '#c27eed' , 015 , 141 ] 
let s:V2 = [ '#9939d5' , '#c988f2' , 000 , 048 ] 
let s:V3 = [ '#9e42d7' , '#dcdfe5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#9939d5' , '#b8c0cc' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#b8c0cc' , '#dcdfe5' , 250 , 253, '' ] 
let s:IA2 = [ '#b8c0cc' , '#dcdfe5' , 240 , 253, '' ] 
let s:IA3 = [ '#b8c0cc' , '#dcdfe5' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#9939d5' , '#b8c0cc' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_O_Light#palette.accents = { 
      \ 'red': [ '#2771e7' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_O_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f0f6ff' , '#2771e7' , 015 , 030, ''     ], 
      \ [ '#f6f6f9' , '#4287f5' , 015 , 036, ''     ], 
      \ [ '#2771e7' , '#f6f6f9' , bold' ]) 
