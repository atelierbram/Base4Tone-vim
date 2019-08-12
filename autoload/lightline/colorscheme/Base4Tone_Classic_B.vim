" File: https://github.com/atelierbram/Base4Tone-vim/blob/master/autoload/lightline/Base4Tone_Classic_B.vim
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
" condition vim-colors-Base4Tone_Classic_B uses to determine which set of colors  
" to use. 
 let s:Base4Tone_Classic_B_termcolors = get(g:, 'Base4Tone_Classic_B_termcolors', 256) 
 if s:Base4Tone_Classic_B_termcolors != 256 && &t_Co >= 16 
   let s:cuiindex = 0 
 elseif s:Base4Tone_Classic_B_termcolors == 256 
   let s:cuiindex = 1 
 else 
   let s:cuiindex = 2 
 endif 

let s:base03 = [ '#2c2825', s:cuicolors.base03[s:cuiindex] ] 
let s:base02 = [ '#433c38', s:cuicolors.base02[s:cuiindex] ] 
let s:base01 = [ '#90827a', s:cuicolors.base01[s:cuiindex] ] 
let s:base00 = [ '#a29790', s:cuicolors.base00[s:cuiindex] ] 
let s:base0 = [ '#b5aba6', s:cuicolors.base0[s:cuiindex] ] 
let s:base1 = [ '#c9c0bb', s:cuicolors.base1[s:cuiindex] ] 
let s:base2 = [ '#dcd5d1', s:cuicolors.base2[s:cuiindex] ] 
let s:base3 = [ '#f9f7f6', s:cuicolors.base3[s:cuiindex] ] 
let s:yellow = [ '#f5ada3', s:cuicolors.yellow[s:cuiindex] ] 
let s:orange = [ '#95dc18', s:cuicolors.orange[s:cuiindex] ] 
let s:red = [ '#b15925', s:cuicolors.red[s:cuiindex] ] 
let s:magenta = [ '#cfb617', s:cuicolors.magenta[s:cuiindex] ] 
let s:violet = [ '#9f8a04', s:cuicolors.violet[s:cuiindex] ] 
let s:blue = [ '#e47b3f', s:cuicolors.blue[s:cuiindex] ] 
let s:cyan = [ '#598b04', s:cuicolors.cyan[s:cuiindex] ] 
let s:green = [ '#8bcf17', s:cuicolors.green[s:cuiindex] ] 

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

let g:lightline#colorscheme#Base4Tone_Classic_B#palette = lightline#colorscheme#flatten(s:p) 
let s:base03 = [ '#2c2825', 235 ] 
let s:base02 = [ '#433c38', 237 ] 
let s:base01 = [ '#90827a', 244 ] 
let s:base00 = [ '#a29790', 246 ] 
let s:base0 = [ '#b5aba6', 248 ] 
let s:base1 = [ '#c9c0bb', 250 ] 
let s:base2 = [ '#dcd5d1', 252 ] 
let s:base3 = [ '#f9f7f6', 015 ] 
let s:yellow = [ '#f5ada3', 191 ] 
let s:orange = [ '#95dc18', 147 ] 
let s:red = [ '#b15925', 030 ] 
let s:magenta = [ '#e78b55', 048 ] 
let s:violet = [ '#ce672c', 036 ] 
let s:blue = [ '#e47b3f', 042 ] 
let s:cyan = [ '#598b04', 000 ] 
let s:green = [ '#8bcf17', 141 ] 

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

let g:lightline#colorscheme#Base4Tone_Classic_B#palette = lightline#colorscheme#flatten(s:p) 
