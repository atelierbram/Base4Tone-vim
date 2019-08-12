scriptencoding utf-8 
" Base4Tone_Classic_D_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_D_Dark#palette = {} 

let s:N1   = [ '#434138' , '#908d7a' , 237 , 244 ] 
let s:N2   = [ '#f8f9f6' , '#646254' , 015 , 240 ] 
let s:N3   = [ '#5fe3d1' , '#434138' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_D_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f8f9f6' , '#646254' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#434138' , '#2fdac3' , 237 , 147 ] 
let s:I2 = [ '#f8f9f6' , '#8b7904' , 015 , 030 ] 
let s:I3 = [ '#5fe3d1' , '#434138' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f8f9f6' , '#646254' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#00806f' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_D_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_D_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.replace.airline_a = [ s:I2[0]   , '#8b7904' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_D_Dark#palette.insert_modified 

let s:V1 = [ '#434138' , '#dcc218' , 237 , 048 ] 
let s:V2 = [ '#f8f9f6' , '#8b7904' , 015 , 030 ] 
let s:V3 = [ '#f8f9f6' , '#434138' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f8f9f6' , '#646254' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#646254' , '#434138' , 240 , 237, '' ] 
let s:IA2 = [ '#646254' , '#434138' , 240 , 237, '' ] 
let s:IA3 = [ '#646254' , '#434138' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f8f9f6' , '#646254' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_D_Dark#palette.accents = { 
      \ 'red': [ '#8b7904' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_D_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#fffce6' , '#8b7904' , 015 , 030, ''     ], 
      \ [ '#f8f9f6' , '#a48f04' , 015 , 036, ''     ], 
      \ [ '#8b7904' , '#f8f9f6' , bold' ]) 
