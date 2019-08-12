scriptencoding utf-8 
" Base4Tone_Classic_D_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_D_Light#palette = {} 

let s:N1   = [ '#85826f' , '#d2d0c6' , 243 , 251 ] 
let s:N2   = [ '#00806f' , '#c9c7bb' , 000 , 250 ] 
let s:N3   = [ '#008a77' , '#e5e4dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_D_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#00806f' , '#c9c7bb' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#fffce6' , '#1ed2ba' , 015 , 147 ] 
let s:I2 = [ '#00806f' , '#1ed2ba' , 000 , 147 ] 
let s:I3 = [ '#008a77' , '#e5e4dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#00806f' , '#c9c7bb' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#00806f' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_D_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_D_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.replace.airline_a = [ s:I2[0]   , '#00806f' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_D_Light#palette.insert_modified 

let s:V1 = [ '#f8f9f6' , '#1cc4ae' , 015 , 141 ] 
let s:V2 = [ '#00806f' , '#1ed2ba' , 000 , 048 ] 
let s:V3 = [ '#008a77' , '#e5e4dc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#00806f' , '#c9c7bb' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c9c7bb' , '#e5e4dc' , 250 , 253, '' ] 
let s:IA2 = [ '#c9c7bb' , '#e5e4dc' , 240 , 253, '' ] 
let s:IA3 = [ '#c9c7bb' , '#e5e4dc' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#00806f' , '#c9c7bb' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_D_Light#palette.accents = { 
      \ 'red': [ '#8b7904' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_D_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#fffce6' , '#8b7904' , 015 , 030, ''     ], 
      \ [ '#f8f9f6' , '#a48f04' , 015 , 036, ''     ], 
      \ [ '#8b7904' , '#f8f9f6' , bold' ]) 
