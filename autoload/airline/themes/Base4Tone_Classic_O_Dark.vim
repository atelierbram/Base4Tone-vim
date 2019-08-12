scriptencoding utf-8 
" Base4Tone_Classic_O_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_O_Dark#palette = {} 

let s:N1   = [ '#333b47' , '#718098' , 237 , 244 ] 
let s:N2   = [ '#f6f6f9' , '#4d586a' , 015 , 240 ] 
let s:N3   = [ '#daacf6' , '#333b47' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_O_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f6f6f9' , '#4d586a' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#333b47' , '#d19af4' , 237 , 147 ] 
let s:I2 = [ '#f6f6f9' , '#2771e7' , 015 , 030 ] 
let s:I3 = [ '#daacf6' , '#333b47' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f6f6f9' , '#4d586a' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#9939d5' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_O_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_O_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.replace.airline_a = [ s:I2[0]   , '#2771e7' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_O_Dark#palette.insert_modified 

let s:V1 = [ '#333b47' , '#88b4fc' , 237 , 048 ] 
let s:V2 = [ '#f6f6f9' , '#2771e7' , 015 , 030 ] 
let s:V3 = [ '#f6f6f9' , '#333b47' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f6f6f9' , '#4d586a' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#4d586a' , '#333b47' , 240 , 237, '' ] 
let s:IA2 = [ '#4d586a' , '#333b47' , 240 , 237, '' ] 
let s:IA3 = [ '#4d586a' , '#333b47' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f6f6f9' , '#4d586a' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_O_Dark#palette.accents = { 
      \ 'red': [ '#2771e7' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_O_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f0f6ff' , '#2771e7' , 015 , 030, ''     ], 
      \ [ '#f6f6f9' , '#4287f5' , 015 , 036, ''     ], 
      \ [ '#2771e7' , '#f6f6f9' , bold' ]) 
