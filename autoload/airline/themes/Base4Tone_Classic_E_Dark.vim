scriptencoding utf-8 
" Base4Tone_Classic_E_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_E_Dark#palette = {} 

let s:N1   = [ '#414338' , '#8d907a' , 237 , 244 ] 
let s:N2   = [ '#f7f9f6' , '#626454' , 015 , 240 ] 
let s:N3   = [ '#7ddce8' , '#414338' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_E_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f7f9f6' , '#626454' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#414338' , '#5ad2e2' , 237 , 147 ] 
let s:I2 = [ '#f7f9f6' , '#7b8b04' , 015 , 030 ] 
let s:I3 = [ '#7ddce8' , '#414338' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f7f9f6' , '#626454' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#047b8b' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_E_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_E_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.replace.airline_a = [ s:I2[0]   , '#7b8b04' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_E_Dark#palette.insert_modified 

let s:V1 = [ '#414338' , '#c5dc18' , 237 , 048 ] 
let s:V2 = [ '#f7f9f6' , '#7b8b04' , 015 , 030 ] 
let s:V3 = [ '#f7f9f6' , '#414338' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f7f9f6' , '#626454' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#626454' , '#414338' , 240 , 237, '' ] 
let s:IA2 = [ '#626454' , '#414338' , 240 , 237, '' ] 
let s:IA3 = [ '#626454' , '#414338' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f7f9f6' , '#626454' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_E_Dark#palette.accents = { 
      \ 'red': [ '#7b8b04' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_E_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#fcffe6' , '#7b8b04' , 015 , 030, ''     ], 
      \ [ '#f7f9f6' , '#91a404' , 015 , 036, ''     ], 
      \ [ '#7b8b04' , '#f7f9f6' , bold' ]) 
