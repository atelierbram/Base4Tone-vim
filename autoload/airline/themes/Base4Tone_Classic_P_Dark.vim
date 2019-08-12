scriptencoding utf-8 
" Base4Tone_Classic_P_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_P_Dark#palette = {} 

let s:N1   = [ '#383943' , '#7a7d90' , 237 , 244 ] 
let s:N2   = [ '#f7f6f9' , '#545664' , 015 , 240 ] 
let s:N3   = [ '#eaa3f5' , '#383943' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_P_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f7f6f9' , '#545664' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#383943' , '#e691f3' , 237 , 147 ] 
let s:I2 = [ '#f7f6f9' , '#4b60e7' , 015 , 030 ] 
let s:I3 = [ '#eaa3f5' , '#383943' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f7f6f9' , '#545664' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#b52bca' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_P_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_P_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.replace.airline_a = [ s:I2[0]   , '#4b60e7' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_P_Dark#palette.insert_modified 

let s:V1 = [ '#383943' , '#a0acf8' , 237 , 048 ] 
let s:V2 = [ '#f7f6f9' , '#4b60e7' , 015 , 030 ] 
let s:V3 = [ '#f7f6f9' , '#383943' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f7f6f9' , '#545664' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#545664' , '#383943' , 240 , 237, '' ] 
let s:IA2 = [ '#545664' , '#383943' , 240 , 237, '' ] 
let s:IA3 = [ '#545664' , '#383943' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f7f6f9' , '#545664' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_P_Dark#palette.accents = { 
      \ 'red': [ '#4b60e7' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_P_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#f0f2ff' , '#4b60e7' , 015 , 030, ''     ], 
      \ [ '#f7f6f9' , '#6577ec' , 015 , 036, ''     ], 
      \ [ '#4b60e7' , '#f7f6f9' , bold' ]) 
