" colorscheme: Base4Tone_Classic_S by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_S_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_S_Dark" 

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
Hi Debug        #f18c7e NONE 147 
Hi Directory    #c27eed NONE 048 
Hi Error        #1f1d20 #f18c7e 234 
Hi ErrorMsg     #f18c7e #1f1d20 147 
Hi Exception    #f18c7e NONE 147 
Hi FoldColumn   #e755b1 #3e3a40 045 237 
Hi Folded       #7c7481 #3e3a40 243 237 
Hi IncSearch    #c0b8f9 #3925d0 191 058 
Hi Macro        #f18c7e NONE 147 
Hi MatchParen   #1f1d20 #7c7481 234 243 
Hi ModeMsg      #b35ee8 NONE 042 
Hi MoreMsg      #b35ee8 NONE 042 
Hi Question     #d34431 NONE 063 
Hi Search       #e1dde4 #887af0 253 142 
Hi SpecialKey   #7c7481 NONE 243 
Hi TooLong      #f18c7e NONE 147 
Hi Underlined   #f17ec7 NONE 051 
Hi Ignore       #48444b  NONE 238  
Hi Visual       NONE #3e3a40 NONE 237 
Hi VisualNOS    #f18c7e NONE 147 
Hi WarningMsg   #f18c7e NONE 147 
Hi WildMenu     #08070d #887af0 000 142
Hi Menu         #08070d #887af0 000 142
Hi Scrollbar    #08070d #887af0 000 142
Hi Tooltip      #08070d #887af0 000 142
Hi Title        #f17ec7 NONE 051 NONE NONE 
Hi Conceal      #d34431 #1f1d20 063 234 
Hi Cursor       #0b070d #767481 000 243 
Hi NonText      #7c7481 NONE 243 
Hi Normal       #f5e6ff #1f1d20 015 234 
Hi LineNr       #534e56 #29272b  239 235  
Hi SignColumn   #343036 #726b76 236 242 
Hi NonText      #7c7481 NONE 243 
Hi Normal       #f5e6ff #1f1d20 015 234 
Hi LineNr       #534e56 #29272b  239 235  
Hi SignColumn   #343036 #726b76 243 237 
Hi StatusLine   #5d5760 #151217 240 233 NONE NONE 
Hi StatusLineNC #726b76 #29272b 242 235 NONE NONE 
Hi VertSplit    #1f1d20 #1f1d20 234 234 
Hi CursorColumn NONE #3e3a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #29272b NONE 235 NONE NONE 
Hi CursorLineNr #7c7481 #3e3a40 243 237 
Hi PMenu        #9a949e #3e3a40 246 237 
Hi PMenuSel     #3e3a40 #9a949e 237 246 
Hi TabLine      #7c7481 #3e3a40 243 237 
Hi TabLineFill  #7c7481 #3e3a40 243 237 
Hi TabLineSel   #b35ee8 #3e3a40 042 237 

" Standard syntax highlighting 
Hi Boolean      #e963b8 NONE 045 
Hi Character    #f18c7e NONE 147 
Hi Comment      #5d5760  NONE 240  
Hi Conditional  #887af0 NONE 142 
Hi Constant     #aba1f7 NONE 184 
Hi Define       #887af0 NONE 142 
Hi Delimiter    #ce2c93 NONE 039 
Hi Float        #e963b8 NONE 045 
Hi Function     #e963b8 NONE 045 
Hi Identifier   #b3b2bd NONE 249 
Hi Include      #e97263 NONE 069 
Hi Keyword      #887af0 NONE 142 
Hi Label        #887af0 NONE 142 
Hi Number       #ffe6f6 NONE 015 
Hi Operator     #cdc7d1 NONE 251 
Hi PreProc      #887af0 NONE 142 
Hi Repeat       #887af0 NONE 142 
Hi Special      #c988f2 NONE 048 
Hi SpecialChar  #e76655 NONE 069 
Hi Statement    #d19af4 NONE 048 NONE NONE 
Hi StorageClass #f391cf NONE 051 
Hi String       #daacf6 NONE 049 
Hi Structure    #887af0 NONE 142 
Hi Tag          #887af0 NONE 142 
Hi Todo         #c0b8f9 #4c176d 191 024 
Hi Type         #aba1f7 NONE 184 NONE NONE NONE 
Hi Typedef      #887af0 NONE 142 
Hi Noise        #5d5760 NONE  240 

" C highlighting 
Hi cOperator  #e755b1 NONE 045 
Hi cPreCondit #887af0 NONE 142 

" C# highlighting 
Hi csClass                #887af0 NONE 142 
Hi csAttribute            #887af0 NONE 142 
Hi csModifier             #887af0 NONE 142 
Hi csType                 #f18c7e NONE 147 
Hi csUnspecifiedStatement #e97263 NONE 069 
Hi csContextualStatement  #887af0 NONE 142 
Hi csNewDecleration       #f18c7e NONE 147 

" CSS highlighting 
Hi cssBraces     #534e56  NONE 239  
Hi cssClassName  #b3b2bd NONE 249 
Hi cssColor      #b35ee8 NONE 042 
Hi cssImportant  #e65e4d NONE 069 

" Diff highlighting 
Hi DiffAdd     #b35ee8 #3e3a40 042 237 
Hi DiffChange  #7c7481 #3e3a40 243 237 
Hi DiffDelete  #f18c7e #3e3a40 147 237 
Hi DiffText    #e97263 #3e3a40 069 237 
Hi DiffAdded   #b35ee8 #1f1d20 042 234 
Hi DiffFile    #f18c7e #1f1d20 147 234 
Hi DiffNewFile #b35ee8 #1f1d20 042 234 
Hi DiffLine    #e97263 #1f1d20 069 234 
Hi DiffRemoved #f18c7e #1f1d20 147 234 

" Git highlighting 
Hi gitCommitOverflow #f18c7e NONE 147 
Hi gitCommitSummary  #a49ea9 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #b35ee8 #3e3a40 042 237 
Hi GitGutterChange #e97263 #3e3a40 069 237 
Hi GitGutterDelete #f18c7e #3e3a40 147 237 
Hi GitGutterChangeDelete #887af0 #3e3a40 142 237 

" XML highlighting 
Hi xmlTag     #5d5760 NONE 240  
Hi xmlEndTag  #5d5760 NONE 240  
Hi xmlTagName #908994 NONE 245  

" HTML highlighting 
Hi htmlBold      #f17ec7 NONE 051 
Hi htmlItalic    #f5a3d7 NONE 051 
Hi htmlTag       #5d5760  NONE 240  
Hi htmlEndTag    #5d5760  NONE 240  
Hi htmlStatement #c27eed NONE 048 

" JavaScript highlighting 
Hi javaScript          #a49ea9 NONE 247 
Hi javaScriptBraces    #5d5760  NONE 240  
Hi javaScriptNumber    #e963b8 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #e97263 NONE 069 
Hi jsStatement         #887af0 NONE 142 
Hi jsReturn            #887af0 NONE 142 
Hi jsThis              #f18c7e NONE 147 
Hi jsClassDefinition   #887af0 NONE 142 
Hi jsFunction          #887af0 NONE 142 
Hi jsFuncName          #e97263 NONE 069 
Hi jsFuncCall          #e97263 NONE 069 
Hi jsClassFuncName     #e97263 NONE 069 
Hi jsClassMethodType   #887af0 NONE 142 
Hi jsRegexpString      #e755b1 NONE 045 
Hi jsGlobalObjects     #887af0 NONE 142 
Hi jsGlobalNodeObjects #887af0 NONE 142 
Hi jsExceptions        #887af0 NONE 142 
Hi jsBuiltins          #887af0 NONE 142 

" Mail highlighting 
Hi mailQuoted1 #887af0 NONE 142 
Hi mailQuoted2 #b35ee8 NONE 042 
Hi mailQuoted3 #887af0 NONE 142 
Hi mailQuoted4 #e755b1 NONE 045 
Hi mailQuoted5 #e97263 NONE 069 
Hi mailQuoted6 #887af0 NONE 142 
Hi mailURL     #e97263 NONE 069 
Hi mailEmail   #e97263 NONE 069 

" Markdown highlighting 
Hi markdownCode             #b35ee8 NONE 042 
Hi markdownError            #a49ea9 #1f1d20 247 234 
Hi markdownCodeBlock        #b35ee8 NONE 042 
Hi markdownHeadingDelimiter #e963b8 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #e97263 NONE 069 
Hi NERDTreeExecFile #a49ea9 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #a49ea9 NONE 247 
Hi phpComparison     #a49ea9 NONE 247 
Hi phpParent         #5d5760  NONE 240  
Hi phpVarSelector    #e755b1 NONE 045 

" Python highlighting 
Hi pythonOperator #887af0 NONE 142 
Hi pythonRepeat   #887af0 NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #e97263 NONE 069 
Hi rubyConstant               #9488f2 NONE 142 
Hi rubyInterpolation          #b35ee8 NONE 042 
Hi rubyInterpolationDelimiter #e755b1 NONE 045 
Hi rubyRegexp                 #e755b1 NONE 045 
Hi rubySymbol                 #b35ee8 NONE 042 
Hi rubyStringDelimiter        #e755b1 NONE 045 

" SASS highlighting 
Hi sassidChar       #f18c7e NONE 147 
Hi sassClassChar    #e963b8 NONE 045 
Hi sassInclude      #887af0 NONE 142 
Hi sassMixing       #887af0 NONE 142 
Hi sassMixinName    #e97263 NONE 069 
Hi scssAttribute    #5d5760  NONE 240  
Hi scssDefinition   #5d5760  NONE 240  
Hi scssFunctionName #ba6cea NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #b35ee8 #3e3a40 042 237 
Hi SignifySignChange #e97263 #3e3a40 069 237 
Hi SignifySignDelete #f18c7e #3e3a40 147 237 

" Spelling highlighting 
Hi SpellBad   #f18c7e #1f1d20 147 234 undercurl undercurl 
Hi SpellLocal #e755b1 #1f1d20 045 234 undercurl undercurl 
Hi SpellCap   #e97263 #1f1d20 069 234 undercurl undercurl 
Hi SpellRare  #887af0 #1f1d20 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#a49ea9 guibg=s:#e755b1 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#343036"   
  let g:terminal_color_1  = "#e76655"  
  let g:terminal_color_2  = "#726b76"  
  let g:terminal_color_3  = "#7c7481"  
  let g:terminal_color_4  = "#9a949e"  
  let g:terminal_color_5  = "#a49ea9"  
  let g:terminal_color_6  = "#e1dde4"  
  let g:terminal_color_7  = "#f8f6f9"  
  let g:terminal_color_8  = "#f18c7e"  
  let g:terminal_color_9  = "#e963b8"  
  let g:terminal_color_10 = "#887af0"  
  let g:terminal_color_11 = "#641e8f " 
  let g:terminal_color_12 = "#e755b1"  
  let g:terminal_color_13 = "#e97263"  
  let g:terminal_color_14 = "#887af0"  
  let g:terminal_color_15 = "#3e3a40 " 
endif 

