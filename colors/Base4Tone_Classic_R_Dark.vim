" colorscheme: Base4Tone_Classic_R by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_R_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_R_Dark" 

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
Hi Debug        #f17eaa NONE 147 
Hi Directory    #af88f2 NONE 048 
Hi Error        #1e1d20 #f17eaa 234 
Hi ErrorMsg     #f17eaa #1e1d20 147 
Hi Exception    #f17eaa NONE 147 
Hi FoldColumn   #d355e7 #3c3a40 045 237 
Hi Folded       #797481 #3c3a40 243 237 
Hi IncSearch    #b8c1fa #233bd1 191 058 
Hi Macro        #f17eaa NONE 147 
Hi MatchParen   #b792f6 #41434e 048 238 
Hi ModeMsg      #9c6cef NONE 042 
Hi MoreMsg      #9c6cef NONE 042 
Hi Question     #d22d6c NONE 063 
Hi Search       #dfdde4 #7989f1 253 142 
Hi SpecialKey   #797481 NONE 243 
Hi TooLong      #f17eaa NONE 147 
Hi Underlined   #e17ef1 NONE 051 
Hi Ignore       #46444b  NONE 238  
Hi Visual       NONE #3c3a40 NONE 237 
Hi VisualNOS    #f17eaa NONE 147 
Hi WarningMsg   #f17eaa NONE 147 
Hi WildMenu     #07080d #7989f1 000 142
Hi Menu         #07080d #7989f1 000 142
Hi Scrollbar    #07080d #7989f1 000 142
Hi Tooltip      #07080d #7989f1 000 142
Hi Title        #e17ef1 NONE 051 NONE NONE 
Hi Conceal      #d22d6c #1e1d20 063 234 
Hi Cursor       #250e4e #6f7285 000 243 
Hi NonText      #797481 NONE 243 
Hi Normal       #f2ebff #1e1d20 015 234 
Hi LineNr       #514e56 #28272b  239 235  
Hi SignColumn   #323036 #6f6b76 236 242 
Hi NonText      #797481 NONE 243 
Hi Normal       #f2ebff #1e1d20 015 234 
Hi LineNr       #514e56 #28272b  239 235  
Hi SignColumn   #323036 #6f6b76 243 237 
Hi StatusLine   #5b5760 #141217 240 233 NONE NONE 
Hi StatusLineNC #6f6b76 #28272b 242 235 NONE NONE 
Hi VertSplit    #1e1d20 #1e1d20 234 234 
Hi CursorColumn NONE #3c3a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #28272b NONE 235 NONE NONE 
Hi CursorLineNr #797481 #3c3a40 243 237 
Hi PMenu        #98949e #3c3a40 246 237 
Hi PMenuSel     #3c3a40 #98949e 237 246 
Hi TabLine      #797481 #3c3a40 243 237 
Hi TabLineFill  #797481 #3c3a40 243 237 
Hi TabLineSel   #9c6cef #3c3a40 042 237 

" Standard syntax highlighting 
Hi Boolean      #d763e9 NONE 045 
Hi Character    #f17eaa NONE 147 
Hi Comment      #5b5760  NONE 240  
Hi Conditional  #7989f1 NONE 142 
Hi Constant     #a0acf8 NONE 184 
Hi Define       #7989f1 NONE 142 
Hi Delimiter    #be31d3 NONE 039 
Hi Float        #d763e9 NONE 045 
Hi Function     #d763e9 NONE 045 
Hi Identifier   #b0b2bf NONE 249 
Hi Include      #e96396 NONE 069 
Hi Keyword      #7989f1 NONE 142 
Hi Label        #7989f1 NONE 142 
Hi Number       #fce6ff NONE 015 
Hi Operator     #cbc7d1 NONE 251 
Hi PreProc      #7989f1 NONE 142 
Hi Repeat       #7989f1 NONE 142 
Hi Special      #b792f6 NONE 048 
Hi SpecialChar  #e7558d NONE 069 
Hi Statement    #c0a1f7 NONE 048 NONE NONE 
Hi StorageClass #e691f3 NONE 051 
Hi String       #cdb4f9 NONE 049 
Hi Structure    #7989f1 NONE 142 
Hi Tag          #7989f1 NONE 142 
Hi Todo         #b8c1fa #491b98 191 024 
Hi Type         #a0acf8 NONE 184 NONE NONE NONE 
Hi Typedef      #7989f1 NONE 142 
Hi Noise        #5b5760 NONE  240 

" C highlighting 
Hi cOperator  #d355e7 NONE 045 
Hi cPreCondit #7989f1 NONE 142 

" C# highlighting 
Hi csClass                #7989f1 NONE 142 
Hi csAttribute            #7989f1 NONE 142 
Hi csModifier             #7989f1 NONE 142 
Hi csType                 #f17eaa NONE 147 
Hi csUnspecifiedStatement #e96396 NONE 069 
Hi csContextualStatement  #7989f1 NONE 142 
Hi csNewDecleration       #f17eaa NONE 147 

" CSS highlighting 
Hi cssBraces     #514e56  NONE 239  
Hi cssClassName  #b0b2bf NONE 249 
Hi cssColor      #9c6cef NONE 042 
Hi cssImportant  #e64d87 NONE 069 

" Diff highlighting 
Hi DiffAdd     #9c6cef #3c3a40 042 237 
Hi DiffChange  #797481 #3c3a40 243 237 
Hi DiffDelete  #f17eaa #3c3a40 147 237 
Hi DiffText    #e96396 #3c3a40 069 237 
Hi DiffAdded   #9c6cef #1e1d20 042 234 
Hi DiffFile    #f17eaa #1e1d20 147 234 
Hi DiffNewFile #9c6cef #1e1d20 042 234 
Hi DiffLine    #e96396 #1e1d20 069 234 
Hi DiffRemoved #f17eaa #1e1d20 147 234 

" Git highlighting 
Hi gitCommitOverflow #f17eaa NONE 147 
Hi gitCommitSummary  #a29ea9 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #9c6cef #3c3a40 042 237 
Hi GitGutterChange #e96396 #3c3a40 069 237 
Hi GitGutterDelete #f17eaa #3c3a40 147 237 
Hi GitGutterChangeDelete #7989f1 #3c3a40 142 237 

" XML highlighting 
Hi xmlTag     #5b5760 NONE 240  
Hi xmlEndTag  #5b5760 NONE 240  
Hi xmlTagName #8d8994 NONE 245  

" HTML highlighting 
Hi htmlBold      #e17ef1 NONE 051 
Hi htmlItalic    #eaa3f5 NONE 051 
Hi htmlTag       #5b5760  NONE 240  
Hi htmlEndTag    #5b5760  NONE 240  
Hi htmlStatement #af88f2 NONE 048 

" JavaScript highlighting 
Hi javaScript          #a29ea9 NONE 247 
Hi javaScriptBraces    #5b5760  NONE 240  
Hi javaScriptNumber    #d763e9 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #e96396 NONE 069 
Hi jsStatement         #7989f1 NONE 142 
Hi jsReturn            #7989f1 NONE 142 
Hi jsThis              #f17eaa NONE 147 
Hi jsClassDefinition   #7989f1 NONE 142 
Hi jsFunction          #7989f1 NONE 142 
Hi jsFuncName          #e96396 NONE 069 
Hi jsFuncCall          #e96396 NONE 069 
Hi jsClassFuncName     #e96396 NONE 069 
Hi jsClassMethodType   #7989f1 NONE 142 
Hi jsRegexpString      #d355e7 NONE 045 
Hi jsGlobalObjects     #7989f1 NONE 142 
Hi jsGlobalNodeObjects #7989f1 NONE 142 
Hi jsExceptions        #7989f1 NONE 142 
Hi jsBuiltins          #7989f1 NONE 142 

" Mail highlighting 
Hi mailQuoted1 #7989f1 NONE 142 
Hi mailQuoted2 #9c6cef NONE 042 
Hi mailQuoted3 #7989f1 NONE 142 
Hi mailQuoted4 #d355e7 NONE 045 
Hi mailQuoted5 #e96396 NONE 069 
Hi mailQuoted6 #7989f1 NONE 142 
Hi mailURL     #e96396 NONE 069 
Hi mailEmail   #e96396 NONE 069 

" Markdown highlighting 
Hi markdownCode             #9c6cef NONE 042 
Hi markdownError            #a29ea9 #1e1d20 247 234 
Hi markdownCodeBlock        #9c6cef NONE 042 
Hi markdownHeadingDelimiter #d763e9 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #e96396 NONE 069 
Hi NERDTreeExecFile #a29ea9 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #a29ea9 NONE 247 
Hi phpComparison     #a29ea9 NONE 247 
Hi phpParent         #5b5760  NONE 240  
Hi phpVarSelector    #d355e7 NONE 045 

" Python highlighting 
Hi pythonOperator #7989f1 NONE 142 
Hi pythonRepeat   #7989f1 NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #e96396 NONE 069 
Hi rubyConstant               #8493f6 NONE 142 
Hi rubyInterpolation          #9c6cef NONE 042 
Hi rubyInterpolationDelimiter #d355e7 NONE 045 
Hi rubyRegexp                 #d355e7 NONE 045 
Hi rubySymbol                 #9c6cef NONE 042 
Hi rubyStringDelimiter        #d355e7 NONE 045 

" SASS highlighting 
Hi sassidChar       #f17eaa NONE 147 
Hi sassClassChar    #d763e9 NONE 045 
Hi sassInclude      #7989f1 NONE 142 
Hi sassMixing       #7989f1 NONE 142 
Hi sassMixinName    #e96396 NONE 069 
Hi scssAttribute    #5b5760  NONE 240  
Hi scssDefinition   #5b5760  NONE 240  
Hi scssFunctionName #a57af0 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #9c6cef #3c3a40 042 237 
Hi SignifySignChange #e96396 #3c3a40 069 237 
Hi SignifySignDelete #f17eaa #3c3a40 147 237 

" Spelling highlighting 
Hi SpellBad   #f17eaa #1e1d20 147 234 undercurl undercurl 
Hi SpellLocal #d355e7 #1e1d20 045 234 undercurl undercurl 
Hi SpellCap   #e96396 #1e1d20 069 234 undercurl undercurl 
Hi SpellRare  #7989f1 #1e1d20 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#a29ea9 guibg=s:#d355e7 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#323036"   
  let g:terminal_color_1  = "#e7558d"  
  let g:terminal_color_2  = "#6f6b76"  
  let g:terminal_color_3  = "#797481"  
  let g:terminal_color_4  = "#98949e"  
  let g:terminal_color_5  = "#a29ea9"  
  let g:terminal_color_6  = "#dfdde4"  
  let g:terminal_color_7  = "#f7f6f9"  
  let g:terminal_color_8  = "#f17eaa"  
  let g:terminal_color_9  = "#d763e9"  
  let g:terminal_color_10 = "#7989f1"  
  let g:terminal_color_11 = "#5d22c3 " 
  let g:terminal_color_12 = "#d355e7"  
  let g:terminal_color_13 = "#e96396"  
  let g:terminal_color_14 = "#7989f1"  
  let g:terminal_color_15 = "#3c3a40 " 
endif 

