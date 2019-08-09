" colorscheme: Base4Tone_retro by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Modern_W_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_retro_Dark" 

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
Hi Debug        #3dd425 NONE 147 
Hi Directory    #eb75a2 NONE 048 
Hi Error        #201d1e #3dd425 234 
Hi ErrorMsg     #3dd425 #201d1e 147 
Hi Exception    #3dd425 NONE 147 
Hi FoldColumn   #e76655 #403a3c 045 237 
Hi Folded       #817479 #403a3c 243 237 
Hi IncSearch    #7ddce8 #02545e 191 058 
Hi Macro        #3dd425 NONE 147 
Hi MatchParen   #201d1e #817479 234 243 
Hi ModeMsg      #e7558d NONE 042 
Hi MoreMsg      #e7558d NONE 042 
Hi Question     #1f970c NONE 063 
Hi Search       #e4dde0 #22acbf 253 142 
Hi SpecialKey   #817479 NONE 243 
Hi TooLong      #3dd425 NONE 147 
Hi Underlined   #f18c7e NONE 051 
Hi Ignore       #4b4447  NONE 238  
Hi Visual       NONE #403a3c NONE 237 
Hi VisualNOS    #3dd425 NONE 147 
Hi WarningMsg   #3dd425 NONE 147 
Hi WildMenu     #070d0d #22acbf 000 142
Hi Menu         #070d0d #22acbf 000 142
Hi Scrollbar    #070d0d #22acbf 000 142
Hi Tooltip      #070d0d #22acbf 000 142
Hi Title        #f18c7e NONE 051 NONE NONE 
Hi Conceal      #1f970c #201d1e 063 234 
Hi Cursor       #0d080a #6a878a 000 243 
Hi NonText      #817479 NONE 243 
Hi Normal       #ffe6ef #201d1e 015 234 
Hi LineNr       #564e51 #2b2728  239 235  
Hi SignColumn   #363032 #766b6f 236 242 
Hi Cursor       #0d080a #6a878a 000 036 
Hi NonText      #817479 NONE 243 
Hi Normal       #ffe6ef #201d1e 015 234 
Hi LineNr       #564e51 #2b2728  239 235  
Hi SignColumn   #363032 #766b6f 243 237 
Hi StatusLine   #60575b #161314 240 233 NONE NONE 
Hi StatusLineNC #766b6f #2b2728 242 235 NONE NONE 
Hi VertSplit    #201d1e #201d1e 234 234 
Hi CursorColumn NONE #403a3c NONE 237 NONE NONE 
Hi CursorLine   NONE #2b2728 NONE 235 NONE NONE 
Hi CursorLineNr #817479 #403a3c 243 237 
Hi PMenu        #9e9498 #403a3c 246 237 
Hi PMenuSel     #403a3c #9e9498 237 246 
Hi TabLine      #817479 #403a3c 243 237 
Hi TabLineFill  #817479 #403a3c 243 237 
Hi TabLineSel   #e7558d #403a3c 042 237 

" Standard syntax highlighting 
Hi Boolean      #e97263 NONE 045 
Hi Character    #3dd425 NONE 147 
Hi Comment      #60575b  NONE 240  
Hi Conditional  #22acbf NONE 142 
Hi Constant     #3ccadd NONE 184 
Hi Define       #22acbf NONE 142 
Hi Delimiter    #d34431 NONE 039 
Hi Float        #e97263 NONE 045 
Hi Function     #e97263 NONE 045 
Hi Identifier   #aebfc1 NONE 249 
Hi Include      #35ba21 NONE 069 
Hi Keyword      #22acbf NONE 142 
Hi Label        #22acbf NONE 142 
Hi Number       #ffe8e6 NONE 015 
Hi Operator     #d1c7cb NONE 251 
Hi PreProc      #22acbf NONE 142 
Hi Repeat       #22acbf NONE 142 
Hi Special      #f17eaa NONE 048 
Hi SpecialChar  #33b21f NONE 069 
Hi Statement    #f391b6 NONE 048 NONE NONE 
Hi StorageClass #f39c91 NONE 051 
Hi String       #f5a3c2 NONE 049 
Hi Structure    #22acbf NONE 142 
Hi Tag          #22acbf NONE 142 
Hi Todo         #7ddce8 #611532 191 024 
Hi Type         #3ccadd NONE 184 NONE NONE NONE 
Hi Typedef      #22acbf NONE 142 
Hi Noise        #60575b NONE  240 

" C highlighting 
Hi cOperator  #e76655 NONE 045 
Hi cPreCondit #22acbf NONE 142 

" C# highlighting 
Hi csClass                #22acbf NONE 142 
Hi csAttribute            #22acbf NONE 142 
Hi csModifier             #22acbf NONE 142 
Hi csType                 #3dd425 NONE 147 
Hi csUnspecifiedStatement #35ba21 NONE 069 
Hi csContextualStatement  #22acbf NONE 142 
Hi csNewDecleration       #3dd425 NONE 147 

" CSS highlighting 
Hi cssBraces     #564e51  NONE 239  
Hi cssClassName  #aebfc1 NONE 249 
Hi cssColor      #e7558d NONE 042 
Hi cssImportant  #30a91e NONE 069 

" Diff highlighting 
Hi DiffAdd     #e7558d #403a3c 042 237 
Hi DiffChange  #817479 #403a3c 243 237 
Hi DiffDelete  #3dd425 #403a3c 147 237 
Hi DiffText    #35ba21 #403a3c 069 237 
Hi DiffAdded   #e7558d #201d1e 042 234 
Hi DiffFile    #3dd425 #201d1e 147 234 
Hi DiffNewFile #e7558d #201d1e 042 234 
Hi DiffLine    #35ba21 #201d1e 069 234 
Hi DiffRemoved #3dd425 #201d1e 147 234 

" Git highlighting 
Hi gitCommitOverflow #3dd425 NONE 147 
Hi gitCommitSummary  #a89fa2 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #e7558d #403a3c 042 237 
Hi GitGutterChange #35ba21 #403a3c 069 237 
Hi GitGutterDelete #3dd425 #403a3c 147 237 
Hi GitGutterChangeDelete #22acbf #403a3c 142 237 

" XML highlighting 
Hi xmlTag     #60575b NONE 240  
Hi xmlEndTag  #60575b NONE 240  
Hi xmlTagName #94898d NONE 245  

" HTML highlighting 
Hi htmlBold      #f18c7e NONE 051 
Hi htmlItalic    #f5ada3 NONE 051 
Hi htmlTag       #60575b  NONE 240  
Hi htmlEndTag    #60575b  NONE 240  
Hi htmlStatement #eb75a2 NONE 048 

" JavaScript highlighting 
Hi javaScript          #a89fa2 NONE 247 
Hi javaScriptBraces    #60575b  NONE 240  
Hi javaScriptNumber    #e97263 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #35ba21 NONE 069 
Hi jsStatement         #22acbf NONE 142 
Hi jsReturn            #22acbf NONE 142 
Hi jsThis              #3dd425 NONE 147 
Hi jsClassDefinition   #22acbf NONE 142 
Hi jsFunction          #22acbf NONE 142 
Hi jsFuncName          #35ba21 NONE 069 
Hi jsFuncCall          #35ba21 NONE 069 
Hi jsClassFuncName     #35ba21 NONE 069 
Hi jsClassMethodType   #22acbf NONE 142 
Hi jsRegexpString      #e76655 NONE 045 
Hi jsGlobalObjects     #22acbf NONE 142 
Hi jsGlobalNodeObjects #22acbf NONE 142 
Hi jsExceptions        #22acbf NONE 142 
Hi jsBuiltins          #22acbf NONE 142 

" Mail highlighting 
Hi mailQuoted1 #22acbf NONE 142 
Hi mailQuoted2 #e7558d NONE 042 
Hi mailQuoted3 #22acbf NONE 142 
Hi mailQuoted4 #e76655 NONE 045 
Hi mailQuoted5 #35ba21 NONE 069 
Hi mailQuoted6 #22acbf NONE 142 
Hi mailURL     #35ba21 NONE 069 
Hi mailEmail   #35ba21 NONE 069 

" Markdown highlighting 
Hi markdownCode             #e7558d NONE 042 
Hi markdownError            #a89fa2 #201d1e 247 234 
Hi markdownCodeBlock        #e7558d NONE 042 
Hi markdownHeadingDelimiter #e97263 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #35ba21 NONE 069 
Hi NERDTreeExecFile #a89fa2 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #a89fa2 NONE 247 
Hi phpComparison     #a89fa2 NONE 247 
Hi phpParent         #60575b  NONE 240  
Hi phpVarSelector    #e76655 NONE 045 

" Python highlighting 
Hi pythonOperator #22acbf NONE 142 
Hi pythonRepeat   #22acbf NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #35ba21 NONE 069 
Hi rubyConstant               #23b4c7 NONE 142 
Hi rubyInterpolation          #e7558d NONE 042 
Hi rubyInterpolationDelimiter #e76655 NONE 045 
Hi rubyRegexp                 #e76655 NONE 045 
Hi rubySymbol                 #e7558d NONE 042 
Hi rubyStringDelimiter        #e76655 NONE 045 

" SASS highlighting 
Hi sassidChar       #3dd425 NONE 147 
Hi sassClassChar    #e97263 NONE 045 
Hi sassInclude      #22acbf NONE 142 
Hi sassMixing       #22acbf NONE 142 
Hi sassMixinName    #35ba21 NONE 069 
Hi scssAttribute    #60575b  NONE 240  
Hi scssDefinition   #60575b  NONE 240  
Hi scssFunctionName #e96396 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #e7558d #403a3c 042 237 
Hi SignifySignChange #35ba21 #403a3c 069 237 
Hi SignifySignDelete #3dd425 #403a3c 147 237 

" Spelling highlighting 
Hi SpellBad   #3dd425 #201d1e 147 234 undercurl undercurl 
Hi SpellLocal #e76655 #201d1e 045 234 undercurl undercurl 
Hi SpellCap   #35ba21 #201d1e 069 234 undercurl undercurl 
Hi SpellRare  #22acbf #201d1e 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#a89fa2 guibg=s:#e76655 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#363032"   
  let g:terminal_color_1  = "#33b21f"  
  let g:terminal_color_2  = "#766b6f"  
  let g:terminal_color_3  = "#817479"  
  let g:terminal_color_4  = "#9e9498"  
  let g:terminal_color_5  = "#a89fa2"  
  let g:terminal_color_6  = "#e4dde0"  
  let g:terminal_color_7  = "#f9f6f7"  
  let g:terminal_color_8  = "#3dd425"  
  let g:terminal_color_9  = "#e97263"  
  let g:terminal_color_10 = "#22acbf"  
  let g:terminal_color_11 = "#821c43 " 
  let g:terminal_color_12 = "#e76655"  
  let g:terminal_color_13 = "#35ba21"  
  let g:terminal_color_14 = "#22acbf"  
  let g:terminal_color_15 = "#403a3c " 
endif 

