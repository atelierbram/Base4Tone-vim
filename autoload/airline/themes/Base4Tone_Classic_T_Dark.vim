scriptencoding utf-8 
" Base4Tone_Classic_T_Dark - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_T_Dark#palette = {} 

let s:N1   = [ '#3f3a40' , '#897e8b' , 237 , 244 ] 
let s:N2   = [ '#f9f6f7' , '#5f5760' , 015 , 240 ] 
let s:N3   = [ '#f2b28c' , '#3f3a40' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_T_Dark#palette.normal_modified = { 
      \ 'airline_c': [ '#f9f6f7' , '#5f5760' , 015 , 240, ''     ] , 
      \ } 

let s:I1 = [ '#3f3a40' , '#f0a57a' , 237 , 147 ] 
let s:I2 = [ '#f9f6f7' , '#b52bca' , 015 , 030 ] 
let s:I3 = [ '#f2b28c' , '#3f3a40' , 183 , 237 ] 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.insert_modified = { 
      \ 'airline_c': [ '#f9f6f7' , '#5f5760' , 015 , 240, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#b15925' , s:I1[2] , 000, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_T_Dark#palette.replace = copy(g:airline#themes#Base4Tone_Classic_T_Dark#palette.insert) 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.replace.airline_a = [ s:I2[0]   , '#b52bca' , s:I2[2] , 030, ''     ] 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.replace_modified = g:airline#themes#Base4Tone_Classic_T_Dark#palette.insert_modified 

let s:V1 = [ '#3f3a40' , '#e17ef1' , 237 , 048 ] 
let s:V2 = [ '#f9f6f7' , '#b52bca' , 015 , 030 ] 
let s:V3 = [ '#f9f6f7' , '#3f3a40' , 015 , 237 ] 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.visual_modified = { 
      \ 'airline_c': [ '#f9f6f7' , '#5f5760' , 015 , 240, ''     ] , 
      \ } 

let s:IA1 = [ '#5f5760' , '#3f3a40' , 240 , 237, '' ] 
let s:IA2 = [ '#5f5760' , '#3f3a40' , 240 , 237, '' ] 
let s:IA3 = [ '#5f5760' , '#3f3a40' , 240 , 237, '' ] 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.inactive_modified = { 
      \ 'airline_c': [ '#f9f6f7' , '#5f5760' , 015 , 240, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_T_Dark#palette.accents = { 
      \ 'red': [ '#b52bca' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_T_Dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#fce6ff' , '#b52bca' , 015 , 030, ''     ], 
      \ [ '#f9f6f7' , '#ca45de' , 015 , 036, ''     ], 
      \ [ '#b52bca' , '#f9f6f7' , bold' ]) 
