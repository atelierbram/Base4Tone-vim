" colorscheme: Base4Tone_Classic_E by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_E_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_E_Dark" 

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
Hi Debug        #3ccadd NONE 147 
Hi Directory    #b9cf17 NONE 048 
Hi Error        #21211c #3ccadd 234 
Hi ErrorMsg     #3ccadd #21211c 147 
Hi Exception    #3ccadd NONE 147 
Hi FoldColumn   #51b314 #414338 045 237 
Hi Folded       #83856f #414338 243 237 
Hi IncSearch    #eeb863 #6d4503 191 058 
Hi Macro        #3ccadd NONE 147 
Hi MatchParen   #21211c #83856f 234 243 
Hi ModeMsg      #a4b80a NONE 042 
Hi MoreMsg      #a4b80a NONE 042 
Hi Question     #048495 NONE 063 
Hi Search       #e4e5dc #d5880b 253 142 
Hi SpecialKey   #83856f NONE 243 
Hi TooLong      #3ccadd NONE 147 
Hi Underlined   #69d425 NONE 051 
Hi Ignore       #4c4e41  NONE 238  
Hi Visual       NONE #414338 NONE 237 
Hi VisualNOS    #3ccadd NONE 147 
Hi WarningMsg   #3ccadd NONE 147 
Hi WildMenu     #0d0b07 #d5880b 000 142
Hi Menu         #0d0b07 #d5880b 000 142
Hi Scrollbar    #0d0b07 #d5880b 000 142
Hi Tooltip      #0d0b07 #d5880b 000 142
Hi Title        #69d425 NONE 051 NONE NONE 
Hi Conceal      #048495 #21211c 063 234 
Hi Cursor       #0d0d07 #877d6e 000 243 
Hi NonText      #83856f NONE 243 
Hi Normal       #fcffe6 #21211c 015 234 
Hi LineNr       #57594a #2c2c25  239 235  
Hi SignColumn   #37382e #787a66 236 242 
Hi Cursor       #0d0d07 #877d6e 000 036 
Hi NonText      #83856f NONE 243 
Hi Normal       #fcffe6 #21211c 015 234 
Hi LineNr       #57594a #2c2c25  239 235  
Hi SignColumn   #37382e #787a66 243 237 
Hi StatusLine   #626454 #171711 240 233 NONE NONE 
Hi StatusLineNC #787a66 #2c2c25 242 235 NONE NONE 
Hi VertSplit    #21211c #21211c 234 234 
Hi CursorColumn NONE #414338 NONE 237 NONE NONE 
Hi CursorLine   NONE #2c2c25 NONE 235 NONE NONE 
Hi CursorLineNr #83856f #414338 243 237 
Hi PMenu        #a0a290 #414338 246 237 
Hi PMenuSel     #414338 #a0a290 237 246 
Hi TabLine      #83856f #414338 243 237 
Hi TabLineFill  #83856f #414338 243 237 
Hi TabLineSel   #a4b80a #414338 042 237 

" Standard syntax highlighting 
Hi Boolean      #5cba21 NONE 045 
Hi Character    #3ccadd NONE 147 
Hi Comment      #626454  NONE 240  
Hi Conditional  #d5880b NONE 142 
Hi Constant     #e8a02c NONE 184 
Hi Define       #d5880b NONE 142 
Hi Delimiter    #3f920c NONE 039 
Hi Float        #5cba21 NONE 045 
Hi Function     #5cba21 NONE 045 
Hi Identifier   #bfb9b0 NONE 249 
Hi Include      #23b4c7 NONE 069 
Hi Keyword      #d5880b NONE 142 
Hi Label        #d5880b NONE 142 
Hi Number       #efffe6 NONE 015 
Hi Operator     #d1d2c6 NONE 251 
Hi PreProc      #d5880b NONE 142 
Hi Repeat       #d5880b NONE 142 
Hi Special      #c5dc18 NONE 048 
Hi SpecialChar  #22acbf NONE 069 
Hi Statement    #cee61a NONE 048 NONE NONE 
Hi StorageClass #6eda2b NONE 051 
Hi String       #dced5a NONE 049 
Hi Structure    #d5880b NONE 142 
Hi Tag          #d5880b NONE 142 
Hi Todo         #eeb863 #424b02 191 024 
Hi Type         #e8a02c NONE 184 NONE NONE NONE 
Hi Typedef      #d5880b NONE 142 
Hi Noise        #626454 NONE  240 

" C highlighting 
Hi cOperator  #51b314 NONE 045 
Hi cPreCondit #d5880b NONE 142 

" C# highlighting 
Hi csClass                #d5880b NONE 142 
Hi csAttribute            #d5880b NONE 142 
Hi csModifier             #d5880b NONE 142 
Hi csType                 #3ccadd NONE 147 
Hi csUnspecifiedStatement #23b4c7 NONE 069 
Hi csContextualStatement  #d5880b NONE 142 
Hi csNewDecleration       #3ccadd NONE 147 

" CSS highlighting 
Hi cssBraces     #57594a  NONE 239  
Hi cssClassName  #bfb9b0 NONE 249 
Hi cssColor      #a4b80a NONE 042 
Hi cssImportant  #20a5b6 NONE 069 

" Diff highlighting 
Hi DiffAdd     #a4b80a #414338 042 237 
Hi DiffChange  #83856f #414338 243 237 
Hi DiffDelete  #3ccadd #414338 147 237 
Hi DiffText    #23b4c7 #414338 069 237 
Hi DiffAdded   #a4b80a #21211c 042 234 
Hi DiffFile    #3ccadd #21211c 147 234 
Hi DiffNewFile #a4b80a #21211c 042 234 
Hi DiffLine    #23b4c7 #21211c 069 234 
Hi DiffRemoved #3ccadd #21211c 147 234 

" Git highlighting 
Hi gitCommitOverflow #3ccadd NONE 147 
Hi gitCommitSummary  #aaab9b NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #a4b80a #414338 042 237 
Hi GitGutterChange #23b4c7 #414338 069 237 
Hi GitGutterDelete #3ccadd #414338 147 237 
Hi GitGutterChangeDelete #d5880b #414338 142 237 

" XML highlighting 
Hi xmlTag     #626454 NONE 240  
Hi xmlEndTag  #626454 NONE 240  
Hi xmlTagName #979985 NONE 245  

" HTML highlighting 
Hi htmlBold      #69d425 NONE 051 
Hi htmlItalic    #97e467 NONE 051 
Hi htmlTag       #626454  NONE 240  
Hi htmlEndTag    #626454  NONE 240  
Hi htmlStatement #b9cf17 NONE 048 

" JavaScript highlighting 
Hi javaScript          #aaab9b NONE 247 
Hi javaScriptBraces    #626454  NONE 240  
Hi javaScriptNumber    #5cba21 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #23b4c7 NONE 069 
Hi jsStatement         #d5880b NONE 142 
Hi jsReturn            #d5880b NONE 142 
Hi jsThis              #3ccadd NONE 147 
Hi jsClassDefinition   #d5880b NONE 142 
Hi jsFunction          #d5880b NONE 142 
Hi jsFuncName          #23b4c7 NONE 069 
Hi jsFuncCall          #23b4c7 NONE 069 
Hi jsClassFuncName     #23b4c7 NONE 069 
Hi jsClassMethodType   #d5880b NONE 142 
Hi jsRegexpString      #51b314 NONE 045 
Hi jsGlobalObjects     #d5880b NONE 142 
Hi jsGlobalNodeObjects #d5880b NONE 142 
Hi jsExceptions        #d5880b NONE 142 
Hi jsBuiltins          #d5880b NONE 142 

" Mail highlighting 
Hi mailQuoted1 #d5880b NONE 142 
Hi mailQuoted2 #a4b80a NONE 042 
Hi mailQuoted3 #d5880b NONE 142 
Hi mailQuoted4 #51b314 NONE 045 
Hi mailQuoted5 #23b4c7 NONE 069 
Hi mailQuoted6 #d5880b NONE 142 
Hi mailURL     #23b4c7 NONE 069 
Hi mailEmail   #23b4c7 NONE 069 

" Markdown highlighting 
Hi markdownCode             #a4b80a NONE 042 
Hi markdownError            #aaab9b #21211c 247 234 
Hi markdownCodeBlock        #a4b80a NONE 042 
Hi markdownHeadingDelimiter #5cba21 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #23b4c7 NONE 069 
Hi NERDTreeExecFile #aaab9b NONE 247 

" PHP highlighting 
Hi phpMemberSelector #aaab9b NONE 247 
Hi phpComparison     #aaab9b NONE 247 
Hi phpParent         #626454  NONE 240  
Hi phpVarSelector    #51b314 NONE 045 

" Python highlighting 
Hi pythonOperator #d5880b NONE 142 
Hi pythonRepeat   #d5880b NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #23b4c7 NONE 069 
Hi rubyConstant               #dc9118 NONE 142 
Hi rubyInterpolation          #a4b80a NONE 042 
Hi rubyInterpolationDelimiter #51b314 NONE 045 
Hi rubyRegexp                 #51b314 NONE 045 
Hi rubySymbol                 #a4b80a NONE 042 
Hi rubyStringDelimiter        #51b314 NONE 045 

" SASS highlighting 
Hi sassidChar       #3ccadd NONE 147 
Hi sassClassChar    #5cba21 NONE 045 
Hi sassInclude      #d5880b NONE 142 
Hi sassMixing       #d5880b NONE 142 
Hi sassMixinName    #23b4c7 NONE 069 
Hi scssAttribute    #626454  NONE 240  
Hi scssDefinition   #626454  NONE 240  
Hi scssFunctionName #adc115 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #a4b80a #414338 042 237 
Hi SignifySignChange #23b4c7 #414338 069 237 
Hi SignifySignDelete #3ccadd #414338 147 237 

" Spelling highlighting 
Hi SpellBad   #3ccadd #21211c 147 234 undercurl undercurl 
Hi SpellLocal #51b314 #21211c 045 234 undercurl undercurl 
Hi SpellCap   #23b4c7 #21211c 069 234 undercurl undercurl 
Hi SpellRare  #d5880b #21211c 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#aaab9b guibg=s:#51b314 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#37382e"   
  let g:terminal_color_1  = "#22acbf"  
  let g:terminal_color_2  = "#787a66"  
  let g:terminal_color_3  = "#83856f"  
  let g:terminal_color_4  = "#a0a290"  
  let g:terminal_color_5  = "#aaab9b"  
  let g:terminal_color_6  = "#e4e5dc"  
  let g:terminal_color_7  = "#f9f9f6"  
  let g:terminal_color_8  = "#3ccadd"  
  let g:terminal_color_9  = "#5cba21"  
  let g:terminal_color_10 = "#d5880b"  
  let g:terminal_color_11 = "#5d6803 " 
  let g:terminal_color_12 = "#51b314"  
  let g:terminal_color_13 = "#23b4c7"  
  let g:terminal_color_14 = "#d5880b"  
  let g:terminal_color_15 = "#414338 " 
endif 

