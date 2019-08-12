scriptencoding utf-8 
" Base4Tone_Classic_B_Light - https://github.com/atelierbram/Base4Tone-vim 
" author: Bram de Haan 

let g:airline#themes#Base4Tone_Classic_B_Light#palette = {} 

let s:N1   = [ '#85776f' , '#d2cac6' , 243 , 251 ] 
let s:N2   = [ '#598b04' , '#c9c0bb' , 000 , 250 ] 
let s:N3   = [ '#609504' , '#e5dfdc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3) 

let g:airline#themes#Base4Tone_Classic_B_Light#palette.normal_modified = { 
      \ 'airline_c': [ '#598b04' , '#c9c0bb' , 000 , 250, ''     ] , 
      \ } 

let s:I1 = [ '#ffefe6' , '#95dc18' , 015 , 147 ] 
let s:I2 = [ '#598b04' , '#95dc18' , 000 , 147 ] 
let s:I3 = [ '#609504' , '#e5dfdc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3) 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.insert_modified = { 
      \ 'airline_c': [ '#598b04' , '#c9c0bb' , 000 , 250, ''     ] , 
      \ } 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.insert_paste = { 
      \ 'airline_a': [ s:I1[0]   , '#598b04' , s:I1[2] , 030, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_B_Light#palette.replace = copy(g:airline#themes#Base4Tone_Classic_B_Light#palette.insert) 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.replace.airline_a = [ s:I2[0]   , '#598b04' , s:I2[2] , 000, ''     ] 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.replace_modified = g:airline#themes#Base4Tone_Classic_B_Light#palette.insert_modified 

let s:V1 = [ '#f9f8f6' , '#8bcf17' , 015 , 141 ] 
let s:V2 = [ '#598b04' , '#95dc18' , 000 , 048 ] 
let s:V3 = [ '#609504' , '#e5dfdc' , 063 , 253 ] 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3) 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.visual_modified = { 
      \ 'airline_c': [ '#598b04' , '#c9c0bb' , 000 , 250, ''     ] , 
      \ } 

let s:IA1 = [ '#c9c0bb' , '#e5dfdc' , 250 , 253, '' ] 
let s:IA2 = [ '#c9c0bb' , '#e5dfdc' , 240 , 253, '' ] 
let s:IA3 = [ '#c9c0bb' , '#e5dfdc' , 250 , 253, '' ] 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3) 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.inactive_modified = { 
      \ 'airline_c': [ '#598b04' , '#c9c0bb' , 000 , 250, ''     ] , 
      \ } 

let g:airline#themes#Base4Tone_Classic_B_Light#palette.accents = { 
      \ 'red': [ '#b15925' , '' , 030, ''  ] 
      \ } 

if !get(g:, 'loaded_ctrlp', 0) 
  finish 
endif 
let g:airline#themes#Base4Tone_Classic_B_Light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map( 
      \ [ '#ffefe6' , '#b15925' , 015 , 030, ''     ], 
      \ [ '#f9f8f6' , '#da6b2b' , 015 , 036, ''     ], 
      \ [ '#b15925' , '#f9f8f6' , bold' ]) 
