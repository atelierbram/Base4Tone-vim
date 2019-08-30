" colorscheme: Base4Tone_Classic_U by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_U_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_U_Dark" 

" https://stackoverflow.com/questions/2211477/how-can-i-use-variables-to-dry-up-vim-colorthemes 
" https://stackoverflow.com/questions/4396647/how-to-write-a-vim-color-scheme 
command! -nargs=+ Hi call CustomHighlighter(<f-args>) 
function! CustomHighlighter(name, ...) 
  let colour_order = ['guifg', 'guibg', 'ctermfg', 'ctermbg', 'gui', 'cterm'] 
  let command = 'hi ' . a:name 
  if (len(a:000) < 1) || (len(a:000) > (len(colour_order))) 
    echoerr "No colour or too many colours specified" 
  else 
    for i in range(0,len(a:000)-1) 
      let command .= ' ' . colour_order[i] . '=' . a:000[i] 
    endfor 
    exe command 
  endif 
endfunc 

" Vim editor colors 
Hi Bold         NONE NONE NONE NONE bold 
Hi Italic       NONE NONE NONE NONE italic  
Hi Debug        #ee9968 NONE 147 
Hi Directory    #eb75dd NONE 048 
Hi Error        #201d20 #ee9968 234 
Hi ErrorMsg     #ee9968 #201d20 147 
Hi Exception    #ee9968 NONE 147 
Hi FoldColumn   #e75569 #403a40 045 237 
Hi Folded       #81747f #403a40 243 237 
Hi IncSearch    #daacf6 #581b7e 191 058 
Hi Macro        #ee9968 NONE 147 
Hi MatchParen   #201d20 #81747f 234 243 
Hi ModeMsg      #e755d6 NONE 042 
Hi MoreMsg      #e755d6 NONE 042 
Hi Question     #c26129 NONE 063 
Hi Search       #e4dde3 #b35ee8 253 142 
Hi SpecialKey   #81747f NONE 243 
Hi TooLong      #ee9968 NONE 147 
Hi Underlined   #f17e8e NONE 051 
Hi Ignore       #4b444a  NONE 238  
Hi Visual       NONE #403a40 NONE 237 
Hi VisualNOS    #ee9968 NONE 147 
Hi WarningMsg   #ee9968 NONE 147 
Hi WildMenu     #0b070d #b35ee8 000 142
Hi Menu         #0b070d #b35ee8 000 142
Hi Scrollbar    #0b070d #b35ee8 000 142
Hi Tooltip      #0b070d #b35ee8 000 142
Hi Title        #f17e8e NONE 051 NONE NONE 
Hi Conceal      #c26129 #201d20 063 234 
Hi Cursor       #0d070c #7c7481 000 243 
Hi NonText      #81747f NONE 243 
Hi Normal       #ffe6fc #201d20 015 234 
Hi LineNr       #564e55 #2b272a  239 235  
Hi SignColumn   #363035 #766b75 236 242 
Hi NonText      #81747f NONE 243 
Hi Normal       #ffe6fc #201d20 015 234 
Hi LineNr       #564e55 #2b272a  239 235  
Hi SignColumn   #363035 #766b75 243 237 
Hi StatusLine   #60575f #171216 240 233 NONE NONE 
Hi StatusLineNC #766b75 #2b272a 242 235 NONE NONE 
Hi VertSplit    #201d20 #201d20 234 234 
Hi CursorColumn NONE #403a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #2b272a NONE 235 NONE NONE 
Hi CursorLineNr #81747f #403a40 243 237 
Hi PMenu        #9e949d #403a40 246 237 
Hi PMenuSel     #403a40 #9e949d 237 246 
Hi TabLine      #81747f #403a40 243 237 
Hi TabLineFill  #81747f #403a40 243 237 
Hi TabLineSel   #e755d6 #403a40 042 237 

" Standard syntax highlighting 
Hi Boolean      #e96375 NONE 045 
Hi Character    #ee9968 NONE 147 
Hi Comment      #60575f  NONE 240  
Hi Conditional  #b35ee8 NONE 142 
Hi Constant     #c988f2 NONE 184 
Hi Define       #b35ee8 NONE 142 
Hi Delimiter    #d33146 NONE 039 
Hi Float        #e96375 NONE 045 
Hi Function     #e96375 NONE 045 
Hi Identifier   #b9b2bd NONE 249 
Hi Include      #e6854d NONE 069 
Hi Keyword      #b35ee8 NONE 142 
Hi Label        #b35ee8 NONE 142 
Hi Number       #ffe6e9 NONE 015 
Hi Operator     #d1c7d0 NONE 251 
Hi PreProc      #b35ee8 NONE 142 
Hi Repeat       #b35ee8 NONE 142 
Hi Special      #f17ee3 NONE 048 
Hi SpecialChar  #e47b3f NONE 069 
Hi Statement    #f391e7 NONE 048 NONE NONE 
Hi StorageClass #f3919e NONE 051 
Hi String       #f5a3eb NONE 049 
Hi Structure    #b35ee8 NONE 142 
Hi Tag          #b35ee8 NONE 142 
Hi Todo         #daacf6 #581350 191 024 
Hi Type         #c988f2 NONE 184 NONE NONE NONE 
Hi Typedef      #b35ee8 NONE 142 
Hi Noise        #60575f NONE  240 

" C highlighting 
Hi cOperator  #e75569 NONE 045 
Hi cPreCondit #b35ee8 NONE 142 

" C# highlighting 
Hi csClass                #b35ee8 NONE 142 
Hi csAttribute            #b35ee8 NONE 142 
Hi csModifier             #b35ee8 NONE 142 
Hi csType                 #ee9968 NONE 147 
Hi csUnspecifiedStatement #e6854d NONE 069 
Hi csContextualStatement  #b35ee8 NONE 142 
Hi csNewDecleration       #ee9968 NONE 147 

" CSS highlighting 
Hi cssBraces     #564e55  NONE 239  
Hi cssClassName  #b9b2bd NONE 249 
Hi cssColor      #e755d6 NONE 042 
Hi cssImportant  #e16f2d NONE 069 

" Diff highlighting 
Hi DiffAdd     #e755d6 #403a40 042 237 
Hi DiffChange  #81747f #403a40 243 237 
Hi DiffDelete  #ee9968 #403a40 147 237 
Hi DiffText    #e6854d #403a40 069 237 
Hi DiffAdded   #e755d6 #201d20 042 234 
Hi DiffFile    #ee9968 #201d20 147 234 
Hi DiffNewFile #e755d6 #201d20 042 234 
Hi DiffLine    #e6854d #201d20 069 234 
Hi DiffRemoved #ee9968 #201d20 147 234 

" Git highlighting 
Hi gitCommitOverflow #ee9968 NONE 147 
Hi gitCommitSummary  #a99ea7 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #e755d6 #403a40 042 237 
Hi GitGutterChange #e6854d #403a40 069 237 
Hi GitGutterDelete #ee9968 #403a40 147 237 
Hi GitGutterChangeDelete #b35ee8 #403a40 142 237 

" XML highlighting 
Hi xmlTag     #60575f NONE 240  
Hi xmlEndTag  #60575f NONE 240  
Hi xmlTagName #948993 NONE 245  

" HTML highlighting 
Hi htmlBold      #f17e8e NONE 051 
Hi htmlItalic    #f5a3ae NONE 051 
Hi htmlTag       #60575f  NONE 240  
Hi htmlEndTag    #60575f  NONE 240  
Hi htmlStatement #eb75dd NONE 048 

" JavaScript highlighting 
Hi javaScript          #a99ea7 NONE 247 
Hi javaScriptBraces    #60575f  NONE 240  
Hi javaScriptNumber    #e96375 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #e6854d NONE 069 
Hi jsStatement         #b35ee8 NONE 142 
Hi jsReturn            #b35ee8 NONE 142 
Hi jsThis              #ee9968 NONE 147 
Hi jsClassDefinition   #b35ee8 NONE 142 
Hi jsFunction          #b35ee8 NONE 142 
Hi jsFuncName          #e6854d NONE 069 
Hi jsFuncCall          #e6854d NONE 069 
Hi jsClassFuncName     #e6854d NONE 069 
Hi jsClassMethodType   #b35ee8 NONE 142 
Hi jsRegexpString      #e75569 NONE 045 
Hi jsGlobalObjects     #b35ee8 NONE 142 
Hi jsGlobalNodeObjects #b35ee8 NONE 142 
Hi jsExceptions        #b35ee8 NONE 142 
Hi jsBuiltins          #b35ee8 NONE 142 

" Mail highlighting 
Hi mailQuoted1 #b35ee8 NONE 142 
Hi mailQuoted2 #e755d6 NONE 042 
Hi mailQuoted3 #b35ee8 NONE 142 
Hi mailQuoted4 #e75569 NONE 045 
Hi mailQuoted5 #e6854d NONE 069 
Hi mailQuoted6 #b35ee8 NONE 142 
Hi mailURL     #e6854d NONE 069 
Hi mailEmail   #e6854d NONE 069 

" Markdown highlighting 
Hi markdownCode             #e755d6 NONE 042 
Hi markdownError            #a99ea7 #201d20 247 234 
Hi markdownCodeBlock        #e755d6 NONE 042 
Hi markdownHeadingDelimiter #e96375 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #e6854d NONE 069 
Hi NERDTreeExecFile #a99ea7 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #a99ea7 NONE 247 
Hi phpComparison     #a99ea7 NONE 247 
Hi phpParent         #60575f  NONE 240  
Hi phpVarSelector    #e75569 NONE 045 

" Python highlighting 
Hi pythonOperator #b35ee8 NONE 142 
Hi pythonRepeat   #b35ee8 NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #e6854d NONE 069 
Hi rubyConstant               #ba6cea NONE 142 
Hi rubyInterpolation          #e755d6 NONE 042 
Hi rubyInterpolationDelimiter #e75569 NONE 045 
Hi rubyRegexp                 #e75569 NONE 045 
Hi rubySymbol                 #e755d6 NONE 042 
Hi rubyStringDelimiter        #e75569 NONE 045 

" SASS highlighting 
Hi sassidChar       #ee9968 NONE 147 
Hi sassClassChar    #e96375 NONE 045 
Hi sassInclude      #b35ee8 NONE 142 
Hi sassMixing       #b35ee8 NONE 142 
Hi sassMixinName    #e6854d NONE 069 
Hi scssAttribute    #60575f  NONE 240  
Hi scssDefinition   #60575f  NONE 240  
Hi scssFunctionName #e963d9 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #e755d6 #403a40 042 237 
Hi SignifySignChange #e6854d #403a40 069 237 
Hi SignifySignDelete #ee9968 #403a40 147 237 

" Spelling highlighting 
Hi SpellBad   #ee9968 #201d20 147 234 undercurl undercurl 
Hi SpellLocal #e75569 #201d20 045 234 undercurl undercurl 
Hi SpellCap   #e6854d #201d20 069 234 undercurl undercurl 
Hi SpellRare  #b35ee8 #201d20 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#a99ea7 guibg=s:#e75569 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#363035"   
  let g:terminal_color_1  = "#e47b3f"  
  let g:terminal_color_2  = "#766b75"  
  let g:terminal_color_3  = "#81747f"  
  let g:terminal_color_4  = "#9e949d"  
  let g:terminal_color_5  = "#a99ea7"  
  let g:terminal_color_6  = "#e4dde3"  
  let g:terminal_color_7  = "#f9f6f8"  
  let g:terminal_color_8  = "#ee9968"  
  let g:terminal_color_9  = "#e96375"  
  let g:terminal_color_10 = "#b35ee8"  
  let g:terminal_color_11 = "#7a1a6f " 
  let g:terminal_color_12 = "#e75569"  
  let g:terminal_color_13 = "#e6854d"  
  let g:terminal_color_14 = "#b35ee8"  
  let g:terminal_color_15 = "#403a40 " 
endif 

