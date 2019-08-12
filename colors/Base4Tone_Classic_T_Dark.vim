" colorscheme: Base4Tone_Classic_T by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_T_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_T_Dark" 

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
Hi Directory    #db75eb NONE 048 
Hi Error        #201d20 #ee9968 234 
Hi ErrorMsg     #ee9968 #201d20 147 
Hi Exception    #ee9968 NONE 147 
Hi FoldColumn   #e7558d #3f3a40 045 237 
Hi Folded       #7f7481 #3f3a40 243 237 
Hi IncSearch    #cdb4f9 #531fad 191 058 
Hi Macro        #ee9968 NONE 147 
Hi MatchParen   #201d20 #7f7481 234 243 
Hi ModeMsg      #d355e7 NONE 042 
Hi MoreMsg      #d355e7 NONE 042 
Hi Question     #c26129 NONE 063 
Hi Search       #e3dde4 #9c6cef 253 142 
Hi SpecialKey   #7f7481 NONE 243 
Hi TooLong      #ee9968 NONE 147 
Hi Underlined   #f17eaa NONE 051 
Hi Ignore       #4a444b  NONE 238  
Hi Visual       NONE #3f3a40 NONE 237 
Hi VisualNOS    #ee9968 NONE 147 
Hi WarningMsg   #ee9968 NONE 147 
Hi WildMenu     #09070d #9c6cef 000 142
Hi Menu         #09070d #9c6cef 000 142
Hi Scrollbar    #09070d #9c6cef 000 142
Hi Tooltip      #09070d #9c6cef 000 142
Hi Title        #f17eaa NONE 051 NONE NONE 
Hi Conceal      #c26129 #201d20 063 234 
Hi Cursor       #0c070d #797481 000 243 
Hi NonText      #7f7481 NONE 243 
Hi Normal       #fce6ff #201d20 015 234 
Hi LineNr       #554e56 #2a272b  239 235  
Hi SignColumn   #353036 #746b76 236 242 
Hi Cursor       #0c070d #797481 000 036 
Hi NonText      #7f7481 NONE 243 
Hi Normal       #fce6ff #201d20 015 234 
Hi LineNr       #554e56 #2a272b  239 235  
Hi SignColumn   #353036 #746b76 243 237 
Hi StatusLine   #5f5760 #161217 240 233 NONE NONE 
Hi StatusLineNC #746b76 #2a272b 242 235 NONE NONE 
Hi VertSplit    #201d20 #201d20 234 234 
Hi CursorColumn NONE #3f3a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #2a272b NONE 235 NONE NONE 
Hi CursorLineNr #7f7481 #3f3a40 243 237 
Hi PMenu        #9d949e #3f3a40 246 237 
Hi PMenuSel     #3f3a40 #9d949e 237 246 
Hi TabLine      #7f7481 #3f3a40 243 237 
Hi TabLineFill  #7f7481 #3f3a40 243 237 
Hi TabLineSel   #d355e7 #3f3a40 042 237 

" Standard syntax highlighting 
Hi Boolean      #e96396 NONE 045 
Hi Character    #ee9968 NONE 147 
Hi Comment      #5f5760  NONE 240  
Hi Conditional  #9c6cef NONE 142 
Hi Constant     #b792f6 NONE 184 
Hi Define       #9c6cef NONE 142 
Hi Delimiter    #d22d6c NONE 039 
Hi Float        #e96396 NONE 045 
Hi Function     #e96396 NONE 045 
Hi Identifier   #b6b2bd NONE 249 
Hi Include      #e6854d NONE 069 
Hi Keyword      #9c6cef NONE 142 
Hi Label        #9c6cef NONE 142 
Hi Number       #ffe6ef NONE 015 
Hi Operator     #d0c7d1 NONE 251 
Hi PreProc      #9c6cef NONE 142 
Hi Repeat       #9c6cef NONE 142 
Hi Special      #e17ef1 NONE 048 
Hi SpecialChar  #e47b3f NONE 069 
Hi Statement    #e691f3 NONE 048 NONE NONE 
Hi StorageClass #f391b6 NONE 051 
Hi String       #eaa3f5 NONE 049 
Hi Structure    #9c6cef NONE 142 
Hi Tag          #9c6cef NONE 142 
Hi Todo         #cdb4f9 #53145d 191 024 
Hi Type         #b792f6 NONE 184 NONE NONE NONE 
Hi Typedef      #9c6cef NONE 142 
Hi Noise        #5f5760 NONE  240 

" C highlighting 
Hi cOperator  #e7558d NONE 045 
Hi cPreCondit #9c6cef NONE 142 

" C# highlighting 
Hi csClass                #9c6cef NONE 142 
Hi csAttribute            #9c6cef NONE 142 
Hi csModifier             #9c6cef NONE 142 
Hi csType                 #ee9968 NONE 147 
Hi csUnspecifiedStatement #e6854d NONE 069 
Hi csContextualStatement  #9c6cef NONE 142 
Hi csNewDecleration       #ee9968 NONE 147 

" CSS highlighting 
Hi cssBraces     #554e56  NONE 239  
Hi cssClassName  #b6b2bd NONE 249 
Hi cssColor      #d355e7 NONE 042 
Hi cssImportant  #e16f2d NONE 069 

" Diff highlighting 
Hi DiffAdd     #d355e7 #3f3a40 042 237 
Hi DiffChange  #7f7481 #3f3a40 243 237 
Hi DiffDelete  #ee9968 #3f3a40 147 237 
Hi DiffText    #e6854d #3f3a40 069 237 
Hi DiffAdded   #d355e7 #201d20 042 234 
Hi DiffFile    #ee9968 #201d20 147 234 
Hi DiffNewFile #d355e7 #201d20 042 234 
Hi DiffLine    #e6854d #201d20 069 234 
Hi DiffRemoved #ee9968 #201d20 147 234 

" Git highlighting 
Hi gitCommitOverflow #ee9968 NONE 147 
Hi gitCommitSummary  #a79ea9 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #d355e7 #3f3a40 042 237 
Hi GitGutterChange #e6854d #3f3a40 069 237 
Hi GitGutterDelete #ee9968 #3f3a40 147 237 
Hi GitGutterChangeDelete #9c6cef #3f3a40 142 237 

" XML highlighting 
Hi xmlTag     #5f5760 NONE 240  
Hi xmlEndTag  #5f5760 NONE 240  
Hi xmlTagName #938994 NONE 245  

" HTML highlighting 
Hi htmlBold      #f17eaa NONE 051 
Hi htmlItalic    #f5a3c2 NONE 051 
Hi htmlTag       #5f5760  NONE 240  
Hi htmlEndTag    #5f5760  NONE 240  
Hi htmlStatement #db75eb NONE 048 

" JavaScript highlighting 
Hi javaScript          #a79ea9 NONE 247 
Hi javaScriptBraces    #5f5760  NONE 240  
Hi javaScriptNumber    #e96396 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #e6854d NONE 069 
Hi jsStatement         #9c6cef NONE 142 
Hi jsReturn            #9c6cef NONE 142 
Hi jsThis              #ee9968 NONE 147 
Hi jsClassDefinition   #9c6cef NONE 142 
Hi jsFunction          #9c6cef NONE 142 
Hi jsFuncName          #e6854d NONE 069 
Hi jsFuncCall          #e6854d NONE 069 
Hi jsClassFuncName     #e6854d NONE 069 
Hi jsClassMethodType   #9c6cef NONE 142 
Hi jsRegexpString      #e7558d NONE 045 
Hi jsGlobalObjects     #9c6cef NONE 142 
Hi jsGlobalNodeObjects #9c6cef NONE 142 
Hi jsExceptions        #9c6cef NONE 142 
Hi jsBuiltins          #9c6cef NONE 142 

" Mail highlighting 
Hi mailQuoted1 #9c6cef NONE 142 
Hi mailQuoted2 #d355e7 NONE 042 
Hi mailQuoted3 #9c6cef NONE 142 
Hi mailQuoted4 #e7558d NONE 045 
Hi mailQuoted5 #e6854d NONE 069 
Hi mailQuoted6 #9c6cef NONE 142 
Hi mailURL     #e6854d NONE 069 
Hi mailEmail   #e6854d NONE 069 

" Markdown highlighting 
Hi markdownCode             #d355e7 NONE 042 
Hi markdownError            #a79ea9 #201d20 247 234 
Hi markdownCodeBlock        #d355e7 NONE 042 
Hi markdownHeadingDelimiter #e96396 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #e6854d NONE 069 
Hi NERDTreeExecFile #a79ea9 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #a79ea9 NONE 247 
Hi phpComparison     #a79ea9 NONE 247 
Hi phpParent         #5f5760  NONE 240  
Hi phpVarSelector    #e7558d NONE 045 

" Python highlighting 
Hi pythonOperator #9c6cef NONE 142 
Hi pythonRepeat   #9c6cef NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #e6854d NONE 069 
Hi rubyConstant               #a57af0 NONE 142 
Hi rubyInterpolation          #d355e7 NONE 042 
Hi rubyInterpolationDelimiter #e7558d NONE 045 
Hi rubyRegexp                 #e7558d NONE 045 
Hi rubySymbol                 #d355e7 NONE 042 
Hi rubyStringDelimiter        #e7558d NONE 045 

" SASS highlighting 
Hi sassidChar       #ee9968 NONE 147 
Hi sassClassChar    #e96396 NONE 045 
Hi sassInclude      #9c6cef NONE 142 
Hi sassMixing       #9c6cef NONE 142 
Hi sassMixinName    #e6854d NONE 069 
Hi scssAttribute    #5f5760  NONE 240  
Hi scssDefinition   #5f5760  NONE 240  
Hi scssFunctionName #d763e9 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #d355e7 #3f3a40 042 237 
Hi SignifySignChange #e6854d #3f3a40 069 237 
Hi SignifySignDelete #ee9968 #3f3a40 147 237 

" Spelling highlighting 
Hi SpellBad   #ee9968 #201d20 147 234 undercurl undercurl 
Hi SpellLocal #e7558d #201d20 045 234 undercurl undercurl 
Hi SpellCap   #e6854d #201d20 069 234 undercurl undercurl 
Hi SpellRare  #9c6cef #201d20 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#a79ea9 guibg=s:#e7558d guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#353036"   
  let g:terminal_color_1  = "#e47b3f"  
  let g:terminal_color_2  = "#746b76"  
  let g:terminal_color_3  = "#7f7481"  
  let g:terminal_color_4  = "#9d949e"  
  let g:terminal_color_5  = "#a79ea9"  
  let g:terminal_color_6  = "#e3dde4"  
  let g:terminal_color_7  = "#f8f6f9"  
  let g:terminal_color_8  = "#ee9968"  
  let g:terminal_color_9  = "#e96396"  
  let g:terminal_color_10 = "#9c6cef"  
  let g:terminal_color_11 = "#711b7e " 
  let g:terminal_color_12 = "#e7558d"  
  let g:terminal_color_13 = "#e6854d"  
  let g:terminal_color_14 = "#9c6cef"  
  let g:terminal_color_15 = "#3f3a40 " 
endif 

