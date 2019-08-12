scriptencoding utf-8 
" Base4Tone_Classic_C_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_C_Dark#palette = {} 

let s:N1   = [ '#433f37' , '#918778' , 237 , 244 ] 
let s:N2   = [ '#f9f9f6' , '#655e53' , 015 , 240 ] 
let s:N3   = [ '#5aedb4' , '#433f37' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_C_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f9f9f6' , '#655e53' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#433f37' , '#19e194' , 237 , 147 ] 
let s:I2 = [ '#f9f9f6' , '#9f6404' , 015 , 030 ] 
let s:I3 = [ '#5aedb4' , '#433f37' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f9f9f6' , '#655e53' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#038654' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_C_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_C_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.replace.airline_a = [ s:I2[0]   , '#9f6404' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_C_Dark#palette.insert_modified 

let s:V1 = [ '#433f37' , '#e8a02c' , 237 , 048 ] 
let s:V2 = [ '#f9f9f6' , '#9f6404' , 015 , 030 ] 
let s:V3 = [ '#f9f9f6' , '#433f37' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f9f9f6' , '#655e53' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#655e53' , '#433f37' , 240 , 237, '' ] 
let s:IA2 = [ '#655e53' , '#433f37' , 240 , 237, '' ] 
let s:IA3 = [ '#655e53' , '#433f37' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f9f9f6' , '#655e53' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_C_Dark#palette.accents = { 
      \ 'red': [ '#9f6404' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_C_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#fff5e6' , '#9f6404' , 015 , 030, ''     ], 
      \ [ '#f9f9f6' , '#c27905' , 015 , 036, ''     ], 
      \ [ '#9f6404' , '#f9f9f6' , bold' ]) 
