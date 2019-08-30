" colorscheme: Base4Tone_Classic_O by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_O_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_O_Dark" 

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
Hi Debug        #c988f2 NONE 147 
Hi Directory    #74a8fb NONE 048 
Hi Error        #1a1d23 #c988f2 234 
Hi ErrorMsg     #c988f2 #1a1d23 147 
Hi Exception    #c988f2 NONE 147 
Hi FoldColumn   #887af0 #333b47 045 237 
Hi Folded       #67768e #333b47 243 237 
Hi IncSearch    #5fe3d1 #00574b 191 058 
Hi Macro        #c988f2 NONE 147 
Hi MatchParen   #1a1d23 #67768e 234 243 
Hi ModeMsg      #5a96f6 NONE 042 
Hi MoreMsg      #5a96f6 NONE 042 
Hi Question     #9e42d7 NONE 063 
Hi Search       #dcdfe5 #19ae9a 253 142 
Hi SpecialKey   #67768e NONE 243 
Hi TooLong      #c988f2 NONE 147 
Hi Underlined   #aba1f7 NONE 051 
Hi Ignore       #3c4553  NONE 238  
Hi Visual       NONE #333b47 NONE 237 
Hi VisualNOS    #c988f2 NONE 147 
Hi WarningMsg   #c988f2 NONE 147 
Hi WildMenu     #070d0c #19ae9a 000 142
Hi Menu         #070d0c #19ae9a 000 142
Hi Scrollbar    #070d0c #19ae9a 000 142
Hi Tooltip      #070d0c #19ae9a 000 142
Hi Title        #aba1f7 NONE 051 NONE NONE 
Hi Conceal      #9e42d7 #1a1d23 063 234 
Hi Cursor       #07090d #6d8884 000 243 
Hi NonText      #67768e NONE 243 
Hi Normal       #f0f6ff #1a1d23 015 234 
Hi LineNr       #454f5f #22272f  239 235  
Hi SignColumn   #2b313b #5e6c82 236 242 
Hi NonText      #67768e NONE 243 
Hi Normal       #f0f6ff #1a1d23 015 234 
Hi LineNr       #454f5f #22272f  239 235  
Hi SignColumn   #2b313b #5e6c82 243 237 
Hi StatusLine   #4d586a #111418 240 233 NONE NONE 
Hi StatusLineNC #5e6c82 #22272f 242 235 NONE NONE 
Hi VertSplit    #1a1d23 #1a1d23 234 234 
Hi CursorColumn NONE #333b47 NONE 237 NONE NONE 
Hi CursorLine   NONE #22272f NONE 235 NONE NONE 
Hi CursorLineNr #67768e #333b47 243 237 
Hi PMenu        #8995a9 #333b47 246 237 
Hi PMenuSel     #333b47 #8995a9 237 246 
Hi TabLine      #67768e #333b47 243 237 
Hi TabLineFill  #67768e #333b47 243 237 
Hi TabLineSel   #5a96f6 #333b47 042 237 

" Standard syntax highlighting 
Hi Boolean      #9488f2 NONE 045 
Hi Character    #c988f2 NONE 147 
Hi Comment      #4d586a  NONE 240  
Hi Conditional  #19ae9a NONE 142 
Hi Constant     #1ed2ba NONE 184 
Hi Define       #19ae9a NONE 142 
Hi Delimiter    #6e5fe3 NONE 039 
Hi Float        #9488f2 NONE 045 
Hi Function     #9488f2 NONE 045 
Hi Identifier   #b0bfbd NONE 249 
Hi Include      #ba6cea NONE 069 
Hi Keyword      #19ae9a NONE 142 
Hi Label        #19ae9a NONE 142 
Hi Number       #f1f0ff NONE 015 
Hi Operator     #c4cad4 NONE 251 
Hi PreProc      #19ae9a NONE 142 
Hi Repeat       #19ae9a NONE 142 
Hi Special      #88b4fc NONE 048 
Hi SpecialChar  #b35ee8 NONE 069 
Hi Statement    #9cc1fc NONE 048 NONE NONE 
Hi StorageClass #b7aff8 NONE 051 
Hi String       #a8caff NONE 049 
Hi Structure    #19ae9a NONE 142 
Hi Tag          #19ae9a NONE 142 
Hi Todo         #5fe3d1 #0f3e8a 191 024 
Hi Type         #1ed2ba NONE 184 NONE NONE NONE 
Hi Typedef      #19ae9a NONE 142 
Hi Noise        #4d586a NONE  240 

" C highlighting 
Hi cOperator  #887af0 NONE 045 
Hi cPreCondit #19ae9a NONE 142 

" C# highlighting 
Hi csClass                #19ae9a NONE 142 
Hi csAttribute            #19ae9a NONE 142 
Hi csModifier             #19ae9a NONE 142 
Hi csType                 #c988f2 NONE 147 
Hi csUnspecifiedStatement #ba6cea NONE 069 
Hi csContextualStatement  #19ae9a NONE 142 
Hi csNewDecleration       #c988f2 NONE 147 

" CSS highlighting 
Hi cssBraces     #454f5f  NONE 239  
Hi cssClassName  #b0bfbd NONE 249 
Hi cssColor      #5a96f6 NONE 042 
Hi cssImportant  #af55e7 NONE 069 

" Diff highlighting 
Hi DiffAdd     #5a96f6 #333b47 042 237 
Hi DiffChange  #67768e #333b47 243 237 
Hi DiffDelete  #c988f2 #333b47 147 237 
Hi DiffText    #ba6cea #333b47 069 237 
Hi DiffAdded   #5a96f6 #1a1d23 042 234 
Hi DiffFile    #c988f2 #1a1d23 147 234 
Hi DiffNewFile #5a96f6 #1a1d23 042 234 
Hi DiffLine    #ba6cea #1a1d23 069 234 
Hi DiffRemoved #c988f2 #1a1d23 147 234 

" Git highlighting 
Hi gitCommitOverflow #c988f2 NONE 147 
Hi gitCommitSummary  #95a0b2 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #5a96f6 #333b47 042 237 
Hi GitGutterChange #ba6cea #333b47 069 237 
Hi GitGutterDelete #c988f2 #333b47 147 237 
Hi GitGutterChangeDelete #19ae9a #333b47 142 237 

" XML highlighting 
Hi xmlTag     #4d586a NONE 240  
Hi xmlEndTag  #4d586a NONE 240  
Hi xmlTagName #7d8ba1 NONE 245  

" HTML highlighting 
Hi htmlBold      #aba1f7 NONE 051 
Hi htmlItalic    #c0b8f9 NONE 051 
Hi htmlTag       #4d586a  NONE 240  
Hi htmlEndTag    #4d586a  NONE 240  
Hi htmlStatement #74a8fb NONE 048 

" JavaScript highlighting 
Hi javaScript          #95a0b2 NONE 247 
Hi javaScriptBraces    #4d586a  NONE 240  
Hi javaScriptNumber    #9488f2 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #ba6cea NONE 069 
Hi jsStatement         #19ae9a NONE 142 
Hi jsReturn            #19ae9a NONE 142 
Hi jsThis              #c988f2 NONE 147 
Hi jsClassDefinition   #19ae9a NONE 142 
Hi jsFunction          #19ae9a NONE 142 
Hi jsFuncName          #ba6cea NONE 069 
Hi jsFuncCall          #ba6cea NONE 069 
Hi jsClassFuncName     #ba6cea NONE 069 
Hi jsClassMethodType   #19ae9a NONE 142 
Hi jsRegexpString      #887af0 NONE 045 
Hi jsGlobalObjects     #19ae9a NONE 142 
Hi jsGlobalNodeObjects #19ae9a NONE 142 
Hi jsExceptions        #19ae9a NONE 142 
Hi jsBuiltins          #19ae9a NONE 142 

" Mail highlighting 
Hi mailQuoted1 #19ae9a NONE 142 
Hi mailQuoted2 #5a96f6 NONE 042 
Hi mailQuoted3 #19ae9a NONE 142 
Hi mailQuoted4 #887af0 NONE 045 
Hi mailQuoted5 #ba6cea NONE 069 
Hi mailQuoted6 #19ae9a NONE 142 
Hi mailURL     #ba6cea NONE 069 
Hi mailEmail   #ba6cea NONE 069 

" Markdown highlighting 
Hi markdownCode             #5a96f6 NONE 042 
Hi markdownError            #95a0b2 #1a1d23 247 234 
Hi markdownCodeBlock        #5a96f6 NONE 042 
Hi markdownHeadingDelimiter #9488f2 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #ba6cea NONE 069 
Hi NERDTreeExecFile #95a0b2 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #95a0b2 NONE 247 
Hi phpComparison     #95a0b2 NONE 247 
Hi phpParent         #4d586a  NONE 240  
Hi phpVarSelector    #887af0 NONE 045 

" Python highlighting 
Hi pythonOperator #19ae9a NONE 142 
Hi pythonRepeat   #19ae9a NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #ba6cea NONE 069 
Hi rubyConstant               #1bbba6 NONE 142 
Hi rubyInterpolation          #5a96f6 NONE 042 
Hi rubyInterpolationDelimiter #887af0 NONE 045 
Hi rubyRegexp                 #887af0 NONE 045 
Hi rubySymbol                 #5a96f6 NONE 042 
Hi rubyStringDelimiter        #887af0 NONE 045 

" SASS highlighting 
Hi sassidChar       #c988f2 NONE 147 
Hi sassClassChar    #9488f2 NONE 045 
Hi sassInclude      #19ae9a NONE 142 
Hi sassMixing       #19ae9a NONE 142 
Hi sassMixinName    #ba6cea NONE 069 
Hi scssAttribute    #4d586a  NONE 240  
Hi scssDefinition   #4d586a  NONE 240  
Hi scssFunctionName #659efb NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #5a96f6 #333b47 042 237 
Hi SignifySignChange #ba6cea #333b47 069 237 
Hi SignifySignDelete #c988f2 #333b47 147 237 

" Spelling highlighting 
Hi SpellBad   #c988f2 #1a1d23 147 234 undercurl undercurl 
Hi SpellLocal #887af0 #1a1d23 045 234 undercurl undercurl 
Hi SpellCap   #ba6cea #1a1d23 069 234 undercurl undercurl 
Hi SpellRare  #19ae9a #1a1d23 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#95a0b2 guibg=s:#887af0 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#2b313b"   
  let g:terminal_color_1  = "#b35ee8"  
  let g:terminal_color_2  = "#5e6c82"  
  let g:terminal_color_3  = "#67768e"  
  let g:terminal_color_4  = "#8995a9"  
  let g:terminal_color_5  = "#95a0b2"  
  let g:terminal_color_6  = "#dcdfe5"  
  let g:terminal_color_7  = "#f6f7f9"  
  let g:terminal_color_8  = "#c988f2"  
  let g:terminal_color_9  = "#9488f2"  
  let g:terminal_color_10 = "#19ae9a"  
  let g:terminal_color_11 = "#1453b8 " 
  let g:terminal_color_12 = "#887af0"  
  let g:terminal_color_13 = "#ba6cea"  
  let g:terminal_color_14 = "#19ae9a"  
  let g:terminal_color_15 = "#333b47 " 
endif 

