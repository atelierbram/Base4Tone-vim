" colorscheme: Base4Tone_Classic_Q by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_Q_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_Q_Dark" 

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
Hi Debug        #f17ec7 NONE 147 
Hi Directory    #a095f3 NONE 048 
Hi Error        #1d1d20 #f17ec7 234 
Hi ErrorMsg     #f17ec7 #1d1d20 147 
Hi Exception    #f17ec7 NONE 147 
Hi FoldColumn   #b35ee8 #3b3a40 045 237 
Hi Folded       #767481 #3b3a40 243 237 
Hi IncSearch    #a8caff #1249a1 191 058 
Hi Macro        #f17ec7 NONE 147 
Hi MatchParen   #1d1d20 #767481 234 243 
Hi ModeMsg      #887af0 NONE 042 
Hi MoreMsg      #887af0 NONE 042 
Hi Question     #ce2c93 NONE 063 
Hi Search       #dedde4 #5a96f6 253 142 
Hi SpecialKey   #767481 NONE 243 
Hi TooLong      #f17ec7 NONE 147 
Hi Underlined   #c988f2 NONE 051 
Hi Ignore       #45444b  NONE 238  
Hi Visual       NONE #3b3a40 NONE 237 
Hi VisualNOS    #f17ec7 NONE 147 
Hi WarningMsg   #f17ec7 NONE 147 
Hi WildMenu     #07090d #5a96f6 000 142
Hi Menu         #07090d #5a96f6 000 142
Hi Scrollbar    #07090d #5a96f6 000 142
Hi Tooltip      #07090d #5a96f6 000 142
Hi Title        #c988f2 NONE 051 NONE NONE 
Hi Conceal      #ce2c93 #1d1d20 063 234 
Hi Cursor       #08070d #67768e 000 243 
Hi NonText      #767481 NONE 243 
Hi Normal       #f1f0ff #1d1d20 015 234 
Hi LineNr       #4e4e56 #27272b  239 235  
Hi SignColumn   #313036 #6c6b76 236 242 
Hi Cursor       #08070d #67768e 000 036 
Hi NonText      #767481 NONE 243 
Hi Normal       #f1f0ff #1d1d20 015 234 
Hi LineNr       #4e4e56 #27272b  239 235  
Hi SignColumn   #313036 #6c6b76 243 237 
Hi StatusLine   #585760 #121217 240 233 NONE NONE 
Hi StatusLineNC #6c6b76 #27272b 242 235 NONE NONE 
Hi VertSplit    #1d1d20 #1d1d20 234 234 
Hi CursorColumn NONE #3b3a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #27272b NONE 235 NONE NONE 
Hi CursorLineNr #767481 #3b3a40 243 237 
Hi PMenu        #95949e #3b3a40 246 237 
Hi PMenuSel     #3b3a40 #95949e 237 246 
Hi TabLine      #767481 #3b3a40 243 237 
Hi TabLineFill  #767481 #3b3a40 243 237 
Hi TabLineSel   #887af0 #3b3a40 042 237 

" Standard syntax highlighting 
Hi Boolean      #ba6cea NONE 045 
Hi Character    #f17ec7 NONE 147 
Hi Comment      #585760  NONE 240  
Hi Conditional  #5a96f6 NONE 142 
Hi Constant     #88b4fc NONE 184 
Hi Define       #5a96f6 NONE 142 
Hi Delimiter    #9e42d7 NONE 039 
Hi Float        #ba6cea NONE 045 
Hi Function     #ba6cea NONE 045 
Hi Identifier   #acb5c3 NONE 249 
Hi Include      #e963b8 NONE 069 
Hi Keyword      #5a96f6 NONE 142 
Hi Label        #5a96f6 NONE 142 
Hi Number       #f5e6ff NONE 015 
Hi Operator     #c8c7d1 NONE 251 
Hi PreProc      #5a96f6 NONE 142 
Hi Repeat       #5a96f6 NONE 142 
Hi Special      #aba1f7 NONE 048 
Hi SpecialChar  #e755b1 NONE 069 
Hi Statement    #b7aff8 NONE 048 NONE NONE 
Hi StorageClass #d19af4 NONE 051 
Hi String       #c0b8f9 NONE 049 
Hi Structure    #5a96f6 NONE 142 
Hi Tag          #5a96f6 NONE 142 
Hi Todo         #a8caff #3321ba 191 024 
Hi Type         #88b4fc NONE 184 NONE NONE NONE 
Hi Typedef      #5a96f6 NONE 142 
Hi Noise        #585760 NONE  240 

" C highlighting 
Hi cOperator  #b35ee8 NONE 045 
Hi cPreCondit #5a96f6 NONE 142 

" C# highlighting 
Hi csClass                #5a96f6 NONE 142 
Hi csAttribute            #5a96f6 NONE 142 
Hi csModifier             #5a96f6 NONE 142 
Hi csType                 #f17ec7 NONE 147 
Hi csUnspecifiedStatement #e963b8 NONE 069 
Hi csContextualStatement  #5a96f6 NONE 142 
Hi csNewDecleration       #f17ec7 NONE 147 

" CSS highlighting 
Hi cssBraces     #4e4e56  NONE 239  
Hi cssClassName  #acb5c3 NONE 249 
Hi cssColor      #887af0 NONE 042 
Hi cssImportant  #e64dad NONE 069 

" Diff highlighting 
Hi DiffAdd     #887af0 #3b3a40 042 237 
Hi DiffChange  #767481 #3b3a40 243 237 
Hi DiffDelete  #f17ec7 #3b3a40 147 237 
Hi DiffText    #e963b8 #3b3a40 069 237 
Hi DiffAdded   #887af0 #1d1d20 042 234 
Hi DiffFile    #f17ec7 #1d1d20 147 234 
Hi DiffNewFile #887af0 #1d1d20 042 234 
Hi DiffLine    #e963b8 #1d1d20 069 234 
Hi DiffRemoved #f17ec7 #1d1d20 147 234 

" Git highlighting 
Hi gitCommitOverflow #f17ec7 NONE 147 
Hi gitCommitSummary  #9f9ea9 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #887af0 #3b3a40 042 237 
Hi GitGutterChange #e963b8 #3b3a40 069 237 
Hi GitGutterDelete #f17ec7 #3b3a40 147 237 
Hi GitGutterChangeDelete #5a96f6 #3b3a40 142 237 

" XML highlighting 
Hi xmlTag     #585760 NONE 240  
Hi xmlEndTag  #585760 NONE 240  
Hi xmlTagName #8a8994 NONE 245  

" HTML highlighting 
Hi htmlBold      #c988f2 NONE 051 
Hi htmlItalic    #daacf6 NONE 051 
Hi htmlTag       #585760  NONE 240  
Hi htmlEndTag    #585760  NONE 240  
Hi htmlStatement #a095f3 NONE 048 

" JavaScript highlighting 
Hi javaScript          #9f9ea9 NONE 247 
Hi javaScriptBraces    #585760  NONE 240  
Hi javaScriptNumber    #ba6cea NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #e963b8 NONE 069 
Hi jsStatement         #5a96f6 NONE 142 
Hi jsReturn            #5a96f6 NONE 142 
Hi jsThis              #f17ec7 NONE 147 
Hi jsClassDefinition   #5a96f6 NONE 142 
Hi jsFunction          #5a96f6 NONE 142 
Hi jsFuncName          #e963b8 NONE 069 
Hi jsFuncCall          #e963b8 NONE 069 
Hi jsClassFuncName     #e963b8 NONE 069 
Hi jsClassMethodType   #5a96f6 NONE 142 
Hi jsRegexpString      #b35ee8 NONE 045 
Hi jsGlobalObjects     #5a96f6 NONE 142 
Hi jsGlobalNodeObjects #5a96f6 NONE 142 
Hi jsExceptions        #5a96f6 NONE 142 
Hi jsBuiltins          #5a96f6 NONE 142 

" Mail highlighting 
Hi mailQuoted1 #5a96f6 NONE 142 
Hi mailQuoted2 #887af0 NONE 042 
Hi mailQuoted3 #5a96f6 NONE 142 
Hi mailQuoted4 #b35ee8 NONE 045 
Hi mailQuoted5 #e963b8 NONE 069 
Hi mailQuoted6 #5a96f6 NONE 142 
Hi mailURL     #e963b8 NONE 069 
Hi mailEmail   #e963b8 NONE 069 

" Markdown highlighting 
Hi markdownCode             #887af0 NONE 042 
Hi markdownError            #9f9ea9 #1d1d20 247 234 
Hi markdownCodeBlock        #887af0 NONE 042 
Hi markdownHeadingDelimiter #ba6cea NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #e963b8 NONE 069 
Hi NERDTreeExecFile #9f9ea9 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #9f9ea9 NONE 247 
Hi phpComparison     #9f9ea9 NONE 247 
Hi phpParent         #585760  NONE 240  
Hi phpVarSelector    #b35ee8 NONE 045 

" Python highlighting 
Hi pythonOperator #5a96f6 NONE 142 
Hi pythonRepeat   #5a96f6 NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #e963b8 NONE 069 
Hi rubyConstant               #659efb NONE 142 
Hi rubyInterpolation          #887af0 NONE 042 
Hi rubyInterpolationDelimiter #b35ee8 NONE 045 
Hi rubyRegexp                 #b35ee8 NONE 045 
Hi rubySymbol                 #887af0 NONE 042 
Hi rubyStringDelimiter        #b35ee8 NONE 045 

" SASS highlighting 
Hi sassidChar       #f17ec7 NONE 147 
Hi sassClassChar    #ba6cea NONE 045 
Hi sassInclude      #5a96f6 NONE 142 
Hi sassMixing       #5a96f6 NONE 142 
Hi sassMixinName    #e963b8 NONE 069 
Hi scssAttribute    #585760  NONE 240  
Hi scssDefinition   #585760  NONE 240  
Hi scssFunctionName #9488f2 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #887af0 #3b3a40 042 237 
Hi SignifySignChange #e963b8 #3b3a40 069 237 
Hi SignifySignDelete #f17ec7 #3b3a40 147 237 

" Spelling highlighting 
Hi SpellBad   #f17ec7 #1d1d20 147 234 undercurl undercurl 
Hi SpellLocal #b35ee8 #1d1d20 045 234 undercurl undercurl 
Hi SpellCap   #e963b8 #1d1d20 069 234 undercurl undercurl 
Hi SpellRare  #5a96f6 #1d1d20 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#9f9ea9 guibg=s:#b35ee8 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#313036"   
  let g:terminal_color_1  = "#e755b1"  
  let g:terminal_color_2  = "#6c6b76"  
  let g:terminal_color_3  = "#767481"  
  let g:terminal_color_4  = "#95949e"  
  let g:terminal_color_5  = "#9f9ea9"  
  let g:terminal_color_6  = "#dedde4"  
  let g:terminal_color_7  = "#f6f6f9"  
  let g:terminal_color_8  = "#f17ec7"  
  let g:terminal_color_9  = "#ba6cea"  
  let g:terminal_color_10 = "#5a96f6"  
  let g:terminal_color_11 = "#3f2bda " 
  let g:terminal_color_12 = "#b35ee8"  
  let g:terminal_color_13 = "#e963b8"  
  let g:terminal_color_14 = "#5a96f6"  
  let g:terminal_color_15 = "#3b3a40 " 
endif 

