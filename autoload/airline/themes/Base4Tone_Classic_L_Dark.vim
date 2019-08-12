scriptencoding utf-8 
" Base4Tone_Classic_L_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_L_Dark#palette = {} 

let s:N1   = [ '#364442' , '#77928e' , 237 , 244 ] 
let s:N2   = [ '#f6f7f9' , '#526663' , 015 , 240 ] 
let s:N3   = [ '#c0b8f9' , '#364442' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_L_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f6f7f9' , '#526663' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#364442' , '#b7aff8' , 237 , 147 ] 
let s:I2 = [ '#f6f7f9' , '#00806f' , 015 , 030 ] 
let s:I3 = [ '#c0b8f9' , '#364442' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f6f7f9' , '#526663' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#6656e1' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_L_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_L_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.replace.airline_a = [ s:I2[0]   , '#00806f' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_L_Dark#palette.insert_modified 

let s:V1 = [ '#364442' , '#1ed2ba' , 237 , 048 ] 
let s:V2 = [ '#f6f7f9' , '#00806f' , 015 , 030 ] 
let s:V3 = [ '#f6f7f9' , '#364442' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f6f7f9' , '#526663' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#526663' , '#364442' , 240 , 237, '' ] 
let s:IA2 = [ '#526663' , '#364442' , 240 , 237, '' ] 
let s:IA3 = [ '#526663' , '#364442' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f6f7f9' , '#526663' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_L_Dark#palette.accents = { 
      \ 'red': [ '#00806f' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_L_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ebfffc' , '#00806f' , 015 , 030, ''     ], 
      \ [ '#f6f7f9' , '#0d9c89' , 015 , 036, ''     ], 
      \ [ '#00806f' , '#f6f7f9' , bold' ]) 
