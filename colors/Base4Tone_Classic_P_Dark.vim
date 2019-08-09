" colorscheme: Base4Tone_Classic_P by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_P_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_P_Dark" 

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
Hi Debug        #e17ef1 NONE 147 
Hi Directory    #929ff7 NONE 048 
Hi Error        #1c1d21 #e17ef1 234 
Hi ErrorMsg     #e17ef1 #1c1d21 147 
Hi Exception    #e17ef1 NONE 147 
Hi FoldColumn   #9c6cef #383943 045 237 
Hi Folded       #6f7285 #383943 243 237 
Hi IncSearch    #7ddce8 #02545e 191 058 
Hi Macro        #e17ef1 NONE 147 
Hi MatchParen   #1c1d21 #6f7285 234 243 
Hi ModeMsg      #7989f1 NONE 042 
Hi MoreMsg      #7989f1 NONE 042 
Hi Question     #be31d3 NONE 063 
Hi Search       #dcdde5 #22acbf 253 142 
Hi SpecialKey   #6f7285 NONE 243 
Hi TooLong      #e17ef1 NONE 147 
Hi Underlined   #b792f6 NONE 051 
Hi Ignore       #41434e  NONE 238  
Hi Visual       NONE #383943 NONE 237 
Hi VisualNOS    #e17ef1 NONE 147 
Hi WarningMsg   #e17ef1 NONE 147 
Hi WildMenu     #070d0d #22acbf 000 142
Hi Menu         #070d0d #22acbf 000 142
Hi Scrollbar    #070d0d #22acbf 000 142
Hi Tooltip      #070d0d #22acbf 000 142
Hi Title        #b792f6 NONE 051 NONE NONE 
Hi Conceal      #be31d3 #1c1d21 063 234 
Hi Cursor       #07080d #6a878a 000 243 
Hi NonText      #6f7285 NONE 243 
Hi Normal       #f0f2ff #1c1d21 015 234 
Hi LineNr       #4a4c59 #25262c  239 235  
Hi SignColumn   #2e3038 #66697a 236 242 
Hi Cursor       #07080d #6a878a 000 036 
Hi NonText      #6f7285 NONE 243 
Hi Normal       #f0f2ff #1c1d21 015 234 
Hi LineNr       #4a4c59 #25262c  239 235  
Hi SignColumn   #2e3038 #66697a 243 237 
Hi StatusLine   #545664 #111217 240 233 NONE NONE 
Hi StatusLineNC #66697a #25262c 242 235 NONE NONE 
Hi VertSplit    #1c1d21 #1c1d21 234 234 
Hi CursorColumn NONE #383943 NONE 237 NONE NONE 
Hi CursorLine   NONE #25262c NONE 235 NONE NONE 
Hi CursorLineNr #6f7285 #383943 243 237 
Hi PMenu        #9092a2 #383943 246 237 
Hi PMenuSel     #383943 #9092a2 237 246 
Hi TabLine      #6f7285 #383943 243 237 
Hi TabLineFill  #6f7285 #383943 243 237 
Hi TabLineSel   #7989f1 #383943 042 237 

" Standard syntax highlighting 
Hi Boolean      #a57af0 NONE 045 
Hi Character    #e17ef1 NONE 147 
Hi Comment      #545664  NONE 240  
Hi Conditional  #22acbf NONE 142 
Hi Constant     #3ccadd NONE 184 
Hi Define       #22acbf NONE 142 
Hi Delimiter    #8652e0 NONE 039 
Hi Float        #a57af0 NONE 045 
Hi Function     #a57af0 NONE 045 
Hi Identifier   #aebfc1 NONE 249 
Hi Include      #d763e9 NONE 069 
Hi Keyword      #22acbf NONE 142 
Hi Label        #22acbf NONE 142 
Hi Number       #f2ebff NONE 015 
Hi Operator     #c6c8d2 NONE 251 
Hi PreProc      #22acbf NONE 142 
Hi Repeat       #22acbf NONE 142 
Hi Special      #a0acf8 NONE 048 
Hi SpecialChar  #d355e7 NONE 069 
Hi Statement    #aeb8f9 NONE 048 NONE NONE 
Hi StorageClass #c0a1f7 NONE 051 
Hi String       #b8c1fa NONE 049 
Hi Structure    #22acbf NONE 142 
Hi Tag          #22acbf NONE 142 
Hi Todo         #7ddce8 #1f33b7 191 024 
Hi Type         #3ccadd NONE 184 NONE NONE NONE 
Hi Typedef      #22acbf NONE 142 
Hi Noise        #545664 NONE  240 

" C highlighting 
Hi cOperator  #9c6cef NONE 045 
Hi cPreCondit #22acbf NONE 142 

" C# highlighting 
Hi csClass                #22acbf NONE 142 
Hi csAttribute            #22acbf NONE 142 
Hi csModifier             #22acbf NONE 142 
Hi csType                 #e17ef1 NONE 147 
Hi csUnspecifiedStatement #d763e9 NONE 069 
Hi csContextualStatement  #22acbf NONE 142 
Hi csNewDecleration       #e17ef1 NONE 147 

" CSS highlighting 
Hi cssBraces     #4a4c59  NONE 239  
Hi cssClassName  #aebfc1 NONE 249 
Hi cssColor      #7989f1 NONE 042 
Hi cssImportant  #d14de6 NONE 069 

" Diff highlighting 
Hi DiffAdd     #7989f1 #383943 042 237 
Hi DiffChange  #6f7285 #383943 243 237 
Hi DiffDelete  #e17ef1 #383943 147 237 
Hi DiffText    #d763e9 #383943 069 237 
Hi DiffAdded   #7989f1 #1c1d21 042 234 
Hi DiffFile    #e17ef1 #1c1d21 147 234 
Hi DiffNewFile #7989f1 #1c1d21 042 234 
Hi DiffLine    #d763e9 #1c1d21 069 234 
Hi DiffRemoved #e17ef1 #1c1d21 147 234 

" Git highlighting 
Hi gitCommitOverflow #e17ef1 NONE 147 
Hi gitCommitSummary  #9b9dab NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #7989f1 #383943 042 237 
Hi GitGutterChange #d763e9 #383943 069 237 
Hi GitGutterDelete #e17ef1 #383943 147 237 
Hi GitGutterChangeDelete #22acbf #383943 142 237 

" XML highlighting 
Hi xmlTag     #545664 NONE 240  
Hi xmlEndTag  #545664 NONE 240  
Hi xmlTagName #858799 NONE 245  

" HTML highlighting 
Hi htmlBold      #b792f6 NONE 051 
Hi htmlItalic    #cdb4f9 NONE 051 
Hi htmlTag       #545664  NONE 240  
Hi htmlEndTag    #545664  NONE 240  
Hi htmlStatement #929ff7 NONE 048 

" JavaScript highlighting 
Hi javaScript          #9b9dab NONE 247 
Hi javaScriptBraces    #545664  NONE 240  
Hi javaScriptNumber    #a57af0 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #d763e9 NONE 069 
Hi jsStatement         #22acbf NONE 142 
Hi jsReturn            #22acbf NONE 142 
Hi jsThis              #e17ef1 NONE 147 
Hi jsClassDefinition   #22acbf NONE 142 
Hi jsFunction          #22acbf NONE 142 
Hi jsFuncName          #d763e9 NONE 069 
Hi jsFuncCall          #d763e9 NONE 069 
Hi jsClassFuncName     #d763e9 NONE 069 
Hi jsClassMethodType   #22acbf NONE 142 
Hi jsRegexpString      #9c6cef NONE 045 
Hi jsGlobalObjects     #22acbf NONE 142 
Hi jsGlobalNodeObjects #22acbf NONE 142 
Hi jsExceptions        #22acbf NONE 142 
Hi jsBuiltins          #22acbf NONE 142 

" Mail highlighting 
Hi mailQuoted1 #22acbf NONE 142 
Hi mailQuoted2 #7989f1 NONE 042 
Hi mailQuoted3 #22acbf NONE 142 
Hi mailQuoted4 #9c6cef NONE 045 
Hi mailQuoted5 #d763e9 NONE 069 
Hi mailQuoted6 #22acbf NONE 142 
Hi mailURL     #d763e9 NONE 069 
Hi mailEmail   #d763e9 NONE 069 

" Markdown highlighting 
Hi markdownCode             #7989f1 NONE 042 
Hi markdownError            #9b9dab #1c1d21 247 234 
Hi markdownCodeBlock        #7989f1 NONE 042 
Hi markdownHeadingDelimiter #a57af0 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #d763e9 NONE 069 
Hi NERDTreeExecFile #9b9dab NONE 247 

" PHP highlighting 
Hi phpMemberSelector #9b9dab NONE 247 
Hi phpComparison     #9b9dab NONE 247 
Hi phpParent         #545664  NONE 240  
Hi phpVarSelector    #9c6cef NONE 045 

" Python highlighting 
Hi pythonOperator #22acbf NONE 142 
Hi pythonRepeat   #22acbf NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #d763e9 NONE 069 
Hi rubyConstant               #23b4c7 NONE 142 
Hi rubyInterpolation          #7989f1 NONE 042 
Hi rubyInterpolationDelimiter #9c6cef NONE 045 
Hi rubyRegexp                 #9c6cef NONE 045 
Hi rubySymbol                 #7989f1 NONE 042 
Hi rubyStringDelimiter        #9c6cef NONE 045 

" SASS highlighting 
Hi sassidChar       #e17ef1 NONE 147 
Hi sassClassChar    #a57af0 NONE 045 
Hi sassInclude      #22acbf NONE 142 
Hi sassMixing       #22acbf NONE 142 
Hi sassMixinName    #d763e9 NONE 069 
Hi scssAttribute    #545664  NONE 240  
Hi scssDefinition   #545664  NONE 240  
Hi scssFunctionName #8493f6 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #7989f1 #383943 042 237 
Hi SignifySignChange #d763e9 #383943 069 237 
Hi SignifySignDelete #e17ef1 #383943 147 237 

" Spelling highlighting 
Hi SpellBad   #e17ef1 #1c1d21 147 234 undercurl undercurl 
Hi SpellLocal #9c6cef #1c1d21 045 234 undercurl undercurl 
Hi SpellCap   #d763e9 #1c1d21 069 234 undercurl undercurl 
Hi SpellRare  #22acbf #1c1d21 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#9b9dab guibg=s:#9c6cef guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#2e3038"   
  let g:terminal_color_1  = "#d355e7"  
  let g:terminal_color_2  = "#66697a"  
  let g:terminal_color_3  = "#6f7285"  
  let g:terminal_color_4  = "#9092a2"  
  let g:terminal_color_5  = "#9b9dab"  
  let g:terminal_color_6  = "#dcdde5"  
  let g:terminal_color_7  = "#f6f6f9"  
  let g:terminal_color_8  = "#e17ef1"  
  let g:terminal_color_9  = "#a57af0"  
  let g:terminal_color_10 = "#22acbf"  
  let g:terminal_color_11 = "#2e45dc " 
  let g:terminal_color_12 = "#9c6cef"  
  let g:terminal_color_13 = "#d763e9"  
  let g:terminal_color_14 = "#22acbf"  
  let g:terminal_color_15 = "#383943 " 
endif 

