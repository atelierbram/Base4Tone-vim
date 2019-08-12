scriptencoding utf-8 
" Base4Tone_Classic_P_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_P_Light#palette = {} 

let s:N1   = [ '#6f7285' , '#c6c8d2' , 243 , 251 ] 
let s:N2   = [ '#b52bca' , '#bbbdc9' , 000 , 250 ] 
let s:N3   = [ '#be31d3' , '#dcdde5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_P_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#b52bca' , '#bbbdc9' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#f0f2ff' , '#e17ef1' , 015 , 147 ] 
let s:I2 = [ '#b52bca' , '#e17ef1' , 000 , 147 ] 
let s:I3 = [ '#be31d3' , '#dcdde5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#b52bca' , '#bbbdc9' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#b52bca' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_P_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_P_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.replace.airline_a = [ s:I2[0]   , '#b52bca' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_P_Light#palette.insert_modified 

let s:V1 = [ '#f7f6f9' , '#db75eb' , 015 , 141 ] 
let s:V2 = [ '#b52bca' , '#e17ef1' , 000 , 048 ] 
let s:V3 = [ '#be31d3' , '#dcdde5' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#b52bca' , '#bbbdc9' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#bbbdc9' , '#dcdde5' , 250 , 253, '' ] 
let s:IA2 = [ '#bbbdc9' , '#dcdde5' , 240 , 253, '' ] 
let s:IA3 = [ '#bbbdc9' , '#dcdde5' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#b52bca' , '#bbbdc9' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_P_Light#palette.accents = { 
      \ 'red': [ '#4b60e7' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_P_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f0f2ff' , '#4b60e7' , 015 , 030, ''     ], 
      \ [ '#f7f6f9' , '#6577ec' , 015 , 036, ''     ], 
      \ [ '#4b60e7' , '#f7f6f9' , bold' ]) 
