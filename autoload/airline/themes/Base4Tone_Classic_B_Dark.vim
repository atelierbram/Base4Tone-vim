scriptencoding utf-8 
" Base4Tone_Classic_B_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_B_Dark#palette = {} 

let s:N1   = [ '#433c38' , '#90827a' , 237 , 244 ] 
let s:N2   = [ '#f9f8f6' , '#645a54' , 015 , 240 ] 
let s:N3   = [ '#b5ec55' , '#433c38' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_B_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f9f8f6' , '#645a54' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#433c38' , '#9be61a' , 237 , 147 ] 
let s:I2 = [ '#f9f8f6' , '#b15925' , 015 , 030 ] 
let s:I3 = [ '#b5ec55' , '#433c38' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f9f8f6' , '#645a54' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#598b04' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_B_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_B_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.replace.airline_a = [ s:I2[0]   , '#b15925' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_B_Dark#palette.insert_modified 

let s:V1 = [ '#433c38' , '#ee9968' , 237 , 048 ] 
let s:V2 = [ '#f9f8f6' , '#b15925' , 015 , 030 ] 
let s:V3 = [ '#f9f8f6' , '#433c38' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f9f8f6' , '#645a54' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#645a54' , '#433c38' , 240 , 237, '' ] 
let s:IA2 = [ '#645a54' , '#433c38' , 240 , 237, '' ] 
let s:IA3 = [ '#645a54' , '#433c38' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f9f8f6' , '#645a54' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_B_Dark#palette.accents = { 
      \ 'red': [ '#b15925' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_B_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ffefe6' , '#b15925' , 015 , 030, ''     ], 
      \ [ '#f9f8f6' , '#da6b2b' , 015 , 036, ''     ], 
      \ [ '#b15925' , '#f9f8f6' , bold' ]) 
