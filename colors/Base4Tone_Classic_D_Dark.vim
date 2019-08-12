" colorscheme: Base4Tone_Classic_D by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_D_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_D_Dark" 

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
Hi Debug        #1ed2ba NONE 147 
Hi Directory    #cfb617 NONE 048 
Hi Error        #21211c #1ed2ba 234 
Hi ErrorMsg     #1ed2ba #21211c 147 
Hi Exception    #1ed2ba NONE 147 
Hi FoldColumn   #78b80a #434138 045 237 
Hi Folded       #85826f #434138 243 237 
Hi IncSearch    #f2b28c #723918 191 058 
Hi Macro        #1ed2ba NONE 147 
Hi MatchParen   #21211c #85826f 234 243 
Hi ModeMsg      #b8a10a NONE 042 
Hi MoreMsg      #b8a10a NONE 042 
Hi Question     #008a77 NONE 063 
Hi Search       #e5e4dc #e47b3f 253 142 
Hi SpecialKey   #85826f NONE 243 
Hi TooLong      #1ed2ba NONE 147 
Hi Underlined   #95dc18 NONE 051 
Hi Ignore       #4e4c41  NONE 238  
Hi Visual       NONE #434138 NONE 237 
Hi VisualNOS    #1ed2ba NONE 147 
Hi WarningMsg   #1ed2ba NONE 147 
Hi WildMenu     #0d0907 #e47b3f 000 142
Hi Menu         #0d0907 #e47b3f 000 142
Hi Scrollbar    #0d0907 #e47b3f 000 142
Hi Tooltip      #0d0907 #e47b3f 000 142
Hi Title        #95dc18 NONE 051 NONE NONE 
Hi Conceal      #008a77 #21211c 063 234 
Hi Cursor       #0d0c07 #85776f 000 243 
Hi NonText      #85826f NONE 243 
Hi Normal       #fffce6 #21211c 015 234 
Hi LineNr       #59574a #2c2b25  239 235  
Hi SignColumn   #38362e #7a7866 236 242 
Hi Cursor       #0d0c07 #85776f 000 036 
Hi NonText      #85826f NONE 243 
Hi Normal       #fffce6 #21211c 015 234 
Hi LineNr       #59574a #2c2b25  239 235  
Hi SignColumn   #38362e #7a7866 243 237 
Hi StatusLine   #646254 #171711 240 233 NONE NONE 
Hi StatusLineNC #7a7866 #2c2b25 242 235 NONE NONE 
Hi VertSplit    #21211c #21211c 234 234 
Hi CursorColumn NONE #434138 NONE 237 NONE NONE 
Hi CursorLine   NONE #2c2b25 NONE 235 NONE NONE 
Hi CursorLineNr #85826f #434138 243 237 
Hi PMenu        #a2a090 #434138 246 237 
Hi PMenuSel     #434138 #a2a090 237 246 
Hi TabLine      #85826f #434138 243 237 
Hi TabLineFill  #85826f #434138 243 237 
Hi TabLineSel   #b8a10a #434138 042 237 

" Standard syntax highlighting 
Hi Boolean      #82c115 NONE 045 
Hi Character    #1ed2ba NONE 147 
Hi Comment      #646254  NONE 240  
Hi Conditional  #e47b3f NONE 142 
Hi Constant     #ee9968 NONE 184 
Hi Define       #e47b3f NONE 142 
Hi Delimiter    #609504 NONE 039 
Hi Float        #82c115 NONE 045 
Hi Function     #82c115 NONE 045 
Hi Identifier   #bfb6b0 NONE 249 
Hi Include      #1bbba6 NONE 069 
Hi Keyword      #e47b3f NONE 142 
Hi Label        #e47b3f NONE 142 
Hi Number       #f6ffe6 NONE 015 
Hi Operator     #d2d0c6 NONE 251 
Hi PreProc      #e47b3f NONE 142 
Hi Repeat       #e47b3f NONE 142 
Hi Special      #dcc218 NONE 048 
Hi SpecialChar  #19ae9a NONE 069 
Hi Statement    #e6ca1a NONE 048 NONE NONE 
Hi StorageClass #9be61a NONE 051 
Hi String       #ebd547 NONE 049 
Hi Structure    #e47b3f NONE 142 
Hi Tag          #e47b3f NONE 142 
Hi Todo         #f2b28c #4b4102 191 024 
Hi Type         #ee9968 NONE 184 NONE NONE NONE 
Hi Typedef      #e47b3f NONE 142 
Hi Noise        #646254 NONE  240 

" C highlighting 
Hi cOperator  #78b80a NONE 045 
Hi cPreCondit #e47b3f NONE 142 

" C# highlighting 
Hi csClass                #e47b3f NONE 142 
Hi csAttribute            #e47b3f NONE 142 
Hi csModifier             #e47b3f NONE 142 
Hi csType                 #1ed2ba NONE 147 
Hi csUnspecifiedStatement #1bbba6 NONE 069 
Hi csContextualStatement  #e47b3f NONE 142 
Hi csNewDecleration       #1ed2ba NONE 147 

" CSS highlighting 
Hi cssBraces     #59574a  NONE 239  
Hi cssClassName  #bfb6b0 NONE 249 
Hi cssColor      #b8a10a NONE 042 
Hi cssImportant  #18a592 NONE 069 

" Diff highlighting 
Hi DiffAdd     #b8a10a #434138 042 237 
Hi DiffChange  #85826f #434138 243 237 
Hi DiffDelete  #1ed2ba #434138 147 237 
Hi DiffText    #1bbba6 #434138 069 237 
Hi DiffAdded   #b8a10a #21211c 042 234 
Hi DiffFile    #1ed2ba #21211c 147 234 
Hi DiffNewFile #b8a10a #21211c 042 234 
Hi DiffLine    #1bbba6 #21211c 069 234 
Hi DiffRemoved #1ed2ba #21211c 147 234 

" Git highlighting 
Hi gitCommitOverflow #1ed2ba NONE 147 
Hi gitCommitSummary  #aba99b NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #b8a10a #434138 042 237 
Hi GitGutterChange #1bbba6 #434138 069 237 
Hi GitGutterDelete #1ed2ba #434138 147 237 
Hi GitGutterChangeDelete #e47b3f #434138 142 237 

" XML highlighting 
Hi xmlTag     #646254 NONE 240  
Hi xmlEndTag  #646254 NONE 240  
Hi xmlTagName #999685 NONE 245  

" HTML highlighting 
Hi htmlBold      #95dc18 NONE 051 
Hi htmlItalic    #b5ec55 NONE 051 
Hi htmlTag       #646254  NONE 240  
Hi htmlEndTag    #646254  NONE 240  
Hi htmlStatement #cfb617 NONE 048 

" JavaScript highlighting 
Hi javaScript          #aba99b NONE 247 
Hi javaScriptBraces    #646254  NONE 240  
Hi javaScriptNumber    #82c115 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #1bbba6 NONE 069 
Hi jsStatement         #e47b3f NONE 142 
Hi jsReturn            #e47b3f NONE 142 
Hi jsThis              #1ed2ba NONE 147 
Hi jsClassDefinition   #e47b3f NONE 142 
Hi jsFunction          #e47b3f NONE 142 
Hi jsFuncName          #1bbba6 NONE 069 
Hi jsFuncCall          #1bbba6 NONE 069 
Hi jsClassFuncName     #1bbba6 NONE 069 
Hi jsClassMethodType   #e47b3f NONE 142 
Hi jsRegexpString      #78b80a NONE 045 
Hi jsGlobalObjects     #e47b3f NONE 142 
Hi jsGlobalNodeObjects #e47b3f NONE 142 
Hi jsExceptions        #e47b3f NONE 142 
Hi jsBuiltins          #e47b3f NONE 142 

" Mail highlighting 
Hi mailQuoted1 #e47b3f NONE 142 
Hi mailQuoted2 #b8a10a NONE 042 
Hi mailQuoted3 #e47b3f NONE 142 
Hi mailQuoted4 #78b80a NONE 045 
Hi mailQuoted5 #1bbba6 NONE 069 
Hi mailQuoted6 #e47b3f NONE 142 
Hi mailURL     #1bbba6 NONE 069 
Hi mailEmail   #1bbba6 NONE 069 

" Markdown highlighting 
Hi markdownCode             #b8a10a NONE 042 
Hi markdownError            #aba99b #21211c 247 234 
Hi markdownCodeBlock        #b8a10a NONE 042 
Hi markdownHeadingDelimiter #82c115 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #1bbba6 NONE 069 
Hi NERDTreeExecFile #aba99b NONE 247 

" PHP highlighting 
Hi phpMemberSelector #aba99b NONE 247 
Hi phpComparison     #aba99b NONE 247 
Hi phpParent         #646254  NONE 240  
Hi phpVarSelector    #78b80a NONE 045 

" Python highlighting 
Hi pythonOperator #e47b3f NONE 142 
Hi pythonRepeat   #e47b3f NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #1bbba6 NONE 069 
Hi rubyConstant               #e6854d NONE 142 
Hi rubyInterpolation          #b8a10a NONE 042 
Hi rubyInterpolationDelimiter #78b80a NONE 045 
Hi rubyRegexp                 #78b80a NONE 045 
Hi rubySymbol                 #b8a10a NONE 042 
Hi rubyStringDelimiter        #78b80a NONE 045 

" SASS highlighting 
Hi sassidChar       #1ed2ba NONE 147 
Hi sassClassChar    #82c115 NONE 045 
Hi sassInclude      #e47b3f NONE 142 
Hi sassMixing       #e47b3f NONE 142 
Hi sassMixinName    #1bbba6 NONE 069 
Hi scssAttribute    #646254  NONE 240  
Hi scssDefinition   #646254  NONE 240  
Hi scssFunctionName #c1aa15 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #b8a10a #434138 042 237 
Hi SignifySignChange #1bbba6 #434138 069 237 
Hi SignifySignDelete #1ed2ba #434138 147 237 

" Spelling highlighting 
Hi SpellBad   #1ed2ba #21211c 147 234 undercurl undercurl 
Hi SpellLocal #78b80a #21211c 045 234 undercurl undercurl 
Hi SpellCap   #1bbba6 #21211c 069 234 undercurl undercurl 
Hi SpellRare  #e47b3f #21211c 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#aba99b guibg=s:#78b80a guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#38362e"   
  let g:terminal_color_1  = "#19ae9a"  
  let g:terminal_color_2  = "#7a7866"  
  let g:terminal_color_3  = "#85826f"  
  let g:terminal_color_4  = "#a2a090"  
  let g:terminal_color_5  = "#aba99b"  
  let g:terminal_color_6  = "#e5e4dc"  
  let g:terminal_color_7  = "#f9f8f6"  
  let g:terminal_color_8  = "#1ed2ba"  
  let g:terminal_color_9  = "#82c115"  
  let g:terminal_color_10 = "#e47b3f"  
  let g:terminal_color_11 = "#685b03 " 
  let g:terminal_color_12 = "#78b80a"  
  let g:terminal_color_13 = "#1bbba6"  
  let g:terminal_color_14 = "#e47b3f"  
  let g:terminal_color_15 = "#434138 " 
endif 

