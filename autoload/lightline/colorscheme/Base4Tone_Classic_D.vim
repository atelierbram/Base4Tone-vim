" File: https://github.com/atelierbram/Base4Tone-vim/blob/master/autoload/lightline/Base4Tone_Classic_D.vim
" by: Bram de Haan
" url project: https://github.com/atelierbram/Base4Tone-vim
" License: MIT License

let s:cuicolors = { 
      \ 'base03': [ '8', '235', 'DarkGray' ], 
      \ 'base02': [ '0', '237', 'Black' ], 
      \ 'base01': [ '10', '244', 'LightGreen' ], 
      \ 'base00': [ '11', '246', 'LightYellow' ], 
      \ 'base0':  [ '12', '248', 'LightBlue' ], 
      \ 'base1':  [ '14', '250', 'LightCyan' ], 
      \ 'base2': [ '7', '036', 'LightGray' ], 
      \ 'base3': [ '15', '015', 'White' ], 
      \ 'yellow': [ '3', '191', 'DarkYellow' ], 
      \ 'orange': [ '9', '147', 'LightRed' ], 
      \ 'red': [ '1', '030', 'DarkRed' ], 
      \ 'magenta': [ '5', '051', 'DarkMagenta' ], 
      \ 'violet': [ '13', '039', 'LightMagenta' ], 
      \ 'blue': [ '4', '042', 'DarkBlue' ], 
      \ 'cyan': [ '6', '000', 'DarkCyan' ], 
      \ 'green': [ '2', '141', 'DarkGreen' ], 
      \ } 

" The following condition only applies for the console and is the same 
" condition vim-colors-Base4Tone_Classic_D uses to determine which set of colors  
" to use. 
 let s:Base4Tone_Classic_D_termcolors = get(g:, 'Base4Tone_Classic_D_termcolors', 256) 
 if s:Base4Tone_Classic_D_termcolors != 256 && &t_Co >= 16 
   let s:cuiindex = 0 
 elseif s:Base4Tone_Classic_D_termcolors == 256 
   let s:cuiindex = 1 
 else 
   let s:cuiindex = 2 
 endif 

let s:base03 = [ '#2c2b25', s:cuicolors.base03[s:cuiindex] ] 
let s:base02 = [ '#434138', s:cuicolors.base02[s:cuiindex] ] 
let s:base01 = [ '#908d7a', s:cuicolors.base01[s:cuiindex] ] 
let s:base00 = [ '#a2a090', s:cuicolors.base00[s:cuiindex] ] 
let s:base0 = [ '#b5b3a6', s:cuicolors.base0[s:cuiindex] ] 
let s:base1 = [ '#c9c7bb', s:cuicolors.base1[s:cuiindex] ] 
let s:base2 = [ '#dcdad1', s:cuicolors.base2[s:cuiindex] ] 
let s:base3 = [ '#f9f8f6', s:cuicolors.base3[s:cuiindex] ] 
let s:yellow = [ '#f2b28c', s:cuicolors.yellow[s:cuiindex] ] 
let s:orange = [ '#1ed2ba', s:cuicolors.orange[s:cuiindex] ] 
let s:red = [ '#8b7904', s:cuicolors.red[s:cuiindex] ] 
let s:magenta = [ '#8bcf17', s:cuicolors.magenta[s:cuiindex] ] 
let s:violet = [ '#669f04', s:cuicolors.violet[s:cuiindex] ] 
let s:blue = [ '#b8a10a', s:cuicolors.blue[s:cuiindex] ] 
let s:cyan = [ '#00806f', s:cuicolors.cyan[s:cuiindex] ] 
let s:green = [ '#1cc4ae', s:cuicolors.green[s:cuiindex] ] 

if lightline#colorscheme#background() ==# 'light' 
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ] 
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ] 
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ] 
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ] 
  let [ s:blue, s:green ] = [ s:green, s:blue ] 
endif 

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}} 
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base03, s:base00 ] ] 
let s:p.normal.right = [ [ s:base03, s:base1 ], [ s:base03, s:base00 ] ] 
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ] 
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base0, s:base02 ] ] 
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base03, s:base00 ] ] 
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base03, s:base00 ] ] 
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base03, s:base00 ] ] 
let s:p.normal.middle = [ [ s:base1, s:base02 ] ] 
let s:p.inactive.middle = [ [ s:base01, s:base02 ] ] 
let s:p.tabline.left = [ [ s:base03, s:base00 ] ] 
let s:p.tabline.tabsel = [ [ s:base03, s:base1 ] ] 
let s:p.tabline.middle = [ [ s:base0, s:base02 ] ] 
let s:p.tabline.right = copy(s:p.normal.right) 
let s:p.normal.error = [ [ s:base03, s:red ] ] 
let s:p.normal.warning = [ [ s:base03, s:yellow ] ] 

let g:lightline#colorscheme#Base4Tone_Classic_D#palette = lightline#colorscheme#flatten(s:p) 
let s:base03 = [ '#2c2b25', 235 ] 
let s:base02 = [ '#434138', 237 ] 
let s:base01 = [ '#908d7a', 244 ] 
let s:base00 = [ '#a2a090', 246 ] 
let s:base0 = [ '#b5b3a6', 248 ] 
let s:base1 = [ '#c9c7bb', 250 ] 
let s:base2 = [ '#dcdad1', 252 ] 
let s:base3 = [ '#f9f8f6', 015 ] 
let s:yellow = [ '#f2b28c', 191 ] 
let s:orange = [ '#1ed2ba', 147 ] 
let s:red = [ '#8b7904', 030 ] 
let s:magenta = [ '#cfb617', 048 ] 
let s:violet = [ '#9f8a04', 036 ] 
let s:blue = [ '#b8a10a', 042 ] 
let s:cyan = [ '#00806f', 000 ] 
let s:green = [ '#1cc4ae', 141 ] 

if lightline#colorscheme#background() ==# 'light' 
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ] 
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ] 
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ] 
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ] 
  let [ s:blue, s:green ] = [ s:green, s:blue ] 
endif 

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}} 
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base03, s:base00 ] ] 
let s:p.normal.right = [ [ s:base03, s:base1 ], [ s:base03, s:base00 ] ] 
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ] 
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base0, s:base02 ] ] 
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base03, s:base00 ] ] 
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base03, s:base00 ] ] 
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base03, s:base00 ] ] 
let s:p.normal.middle = [ [ s:base1, s:base02 ] ] 
let s:p.inactive.middle = [ [ s:base01, s:base02 ] ] 
let s:p.tabline.left = [ [ s:base03, s:base00 ] ] 
let s:p.tabline.tabsel = [ [ s:base03, s:base1 ] ] 
let s:p.tabline.middle = [ [ s:base0, s:base02 ] ] 
let s:p.tabline.right = copy(s:p.normal.right) 
let s:p.normal.error = [ [ s:base03, s:red ] ] 
let s:p.normal.warning = [ [ s:base03, s:yellow ] ] 

let g:lightline#colorscheme#Base4Tone_Classic_D#palette = lightline#colorscheme#flatten(s:p) 
