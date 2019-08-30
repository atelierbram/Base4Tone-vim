" colorscheme: Base4Tone_Classic_L by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_L_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_L_Dark" 

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
Hi Debug        #aba1f7 NONE 147 
Hi Directory    #1cc4ae NONE 048 
Hi Error        #1b2221 #aba1f7 234 
Hi ErrorMsg     #aba1f7 #1b2221 147 
Hi Exception    #aba1f7 NONE 147 
Hi FoldColumn   #5a96f6 #364442 045 237 
Hi Folded       #6d8884 #364442 243 237 
Hi IncSearch    #67e476 #075a11 191 058 
Hi Macro        #aba1f7 NONE 147 
Hi MatchParen   #1b2221 #6d8884 234 243 
Hi ModeMsg      #19ae9a NONE 042 
Hi MoreMsg      #19ae9a NONE 042 
Hi Question     #6e5fe3 NONE 063 
Hi Search       #dce5e4 #20b632 253 142 
Hi SpecialKey   #6d8884 NONE 243 
Hi TooLong      #aba1f7 NONE 147 
Hi Underlined   #88b4fc NONE 051 
Hi Ignore       #404f4d  NONE 238  
Hi Visual       NONE #364442 NONE 237 
Hi VisualNOS    #aba1f7 NONE 147 
Hi WarningMsg   #aba1f7 NONE 147 
Hi WildMenu     #021c05 #20b632 000 142
Hi Menu         #021c05 #20b632 000 142
Hi Scrollbar    #021c05 #20b632 000 142
Hi Tooltip      #021c05 #20b632 000 142
Hi Title        #88b4fc NONE 051 NONE NONE 
Hi Conceal      #6e5fe3 #1b2221 063 234 
Hi Cursor       #070d0c #0da01e 000 243 
Hi NonText      #6d8884 NONE 243 
Hi Normal       #ebfffc #1b2221 015 234 
Hi LineNr       #495b58 #242d2c  239 235  
Hi SignColumn   #2d3937 #647d79 236 242 
Hi NonText      #6d8884 NONE 243 
Hi Normal       #ebfffc #1b2221 015 234 
Hi LineNr       #495b58 #242d2c  239 235  
Hi SignColumn   #2d3937 #647d79 243 237 
Hi StatusLine   #526663 #111717 240 233 NONE NONE 
Hi StatusLineNC #647d79 #242d2c 242 235 NONE NONE 
Hi VertSplit    #1b2221 #1b2221 234 234 
Hi CursorColumn NONE #364442 NONE 237 NONE NONE 
Hi CursorLine   NONE #242d2c NONE 235 NONE NONE 
Hi CursorLineNr #6d8884 #364442 243 237 
Hi PMenu        #8ea4a1 #364442 246 237 
Hi PMenuSel     #364442 #8ea4a1 237 246 
Hi TabLine      #6d8884 #364442 243 237 
Hi TabLineFill  #6d8884 #364442 243 237 
Hi TabLineSel   #19ae9a #364442 042 237 

" Standard syntax highlighting 
Hi Boolean      #659efb NONE 045 
Hi Character    #aba1f7 NONE 147 
Hi Comment      #526663  NONE 240  
Hi Conditional  #20b632 NONE 142 
Hi Constant     #2bda3f NONE 184 
Hi Define       #20b632 NONE 142 
Hi Delimiter    #3077e8 NONE 039 
Hi Float        #659efb NONE 045 
Hi Function     #659efb NONE 045 
Hi Identifier   #2bda3f NONE 249 
Hi Include      #9488f2 NONE 069 
Hi Keyword      #20b632 NONE 142 
Hi Label        #20b632 NONE 142 
Hi Number       #f0f6ff NONE 015 
Hi Operator     #c6d2d0 NONE 251 
Hi PreProc      #20b632 NONE 142 
Hi Repeat       #20b632 NONE 142 
Hi Special      #1ed2ba NONE 048 
Hi SpecialChar  #887af0 NONE 069 
Hi Statement    #2fdac3 NONE 048 NONE NONE 
Hi StorageClass #9cc1fc NONE 051 
Hi String       #5fe3d1 NONE 049 
Hi Structure    #20b632 NONE 142 
Hi Tag          #20b632 NONE 142 
Hi Todo         #67e476 #004d42 191 024 
Hi Type         #2bda3f NONE 184 NONE NONE NONE 
Hi Typedef      #20b632 NONE 142 
Hi Noise        #526663 NONE  240 

" C highlighting 
Hi cOperator  #5a96f6 NONE 045 
Hi cPreCondit #20b632 NONE 142 

" C# highlighting 
Hi csClass                #20b632 NONE 142 
Hi csAttribute            #20b632 NONE 142 
Hi csModifier             #20b632 NONE 142 
Hi csType                 #aba1f7 NONE 147 
Hi csUnspecifiedStatement #9488f2 NONE 069 
Hi csContextualStatement  #20b632 NONE 142 
Hi csNewDecleration       #aba1f7 NONE 147 

" CSS highlighting 
Hi cssBraces     #495b58  NONE 239  
Hi cssClassName  #2bda3f NONE 249 
Hi cssColor      #19ae9a NONE 042 
Hi cssImportant  #8275eb NONE 069 

" Diff highlighting 
Hi DiffAdd     #19ae9a #364442 042 237 
Hi DiffChange  #6d8884 #364442 243 237 
Hi DiffDelete  #aba1f7 #364442 147 237 
Hi DiffText    #9488f2 #364442 069 237 
Hi DiffAdded   #19ae9a #1b2221 042 234 
Hi DiffFile    #aba1f7 #1b2221 147 234 
Hi DiffNewFile #19ae9a #1b2221 042 234 
Hi DiffLine    #9488f2 #1b2221 069 234 
Hi DiffRemoved #aba1f7 #1b2221 147 234 

" Git highlighting 
Hi gitCommitOverflow #aba1f7 NONE 147 
Hi gitCommitSummary  #99adab NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #19ae9a #364442 042 237 
Hi GitGutterChange #9488f2 #364442 069 237 
Hi GitGutterDelete #aba1f7 #364442 147 237 
Hi GitGutterChangeDelete #20b632 #364442 142 237 

" XML highlighting 
Hi xmlTag     #526663 NONE 240  
Hi xmlEndTag  #526663 NONE 240  
Hi xmlTagName #829b98 NONE 245  

" HTML highlighting 
Hi htmlBold      #88b4fc NONE 051 
Hi htmlItalic    #a8caff NONE 051 
Hi htmlTag       #526663  NONE 240  
Hi htmlEndTag    #526663  NONE 240  
Hi htmlStatement #1cc4ae NONE 048 

" JavaScript highlighting 
Hi javaScript          #99adab NONE 247 
Hi javaScriptBraces    #526663  NONE 240  
Hi javaScriptNumber    #659efb NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #9488f2 NONE 069 
Hi jsStatement         #20b632 NONE 142 
Hi jsReturn            #20b632 NONE 142 
Hi jsThis              #aba1f7 NONE 147 
Hi jsClassDefinition   #20b632 NONE 142 
Hi jsFunction          #20b632 NONE 142 
Hi jsFuncName          #9488f2 NONE 069 
Hi jsFuncCall          #9488f2 NONE 069 
Hi jsClassFuncName     #9488f2 NONE 069 
Hi jsClassMethodType   #20b632 NONE 142 
Hi jsRegexpString      #5a96f6 NONE 045 
Hi jsGlobalObjects     #20b632 NONE 142 
Hi jsGlobalNodeObjects #20b632 NONE 142 
Hi jsExceptions        #20b632 NONE 142 
Hi jsBuiltins          #20b632 NONE 142 

" Mail highlighting 
Hi mailQuoted1 #20b632 NONE 142 
Hi mailQuoted2 #19ae9a NONE 042 
Hi mailQuoted3 #20b632 NONE 142 
Hi mailQuoted4 #5a96f6 NONE 045 
Hi mailQuoted5 #9488f2 NONE 069 
Hi mailQuoted6 #20b632 NONE 142 
Hi mailURL     #9488f2 NONE 069 
Hi mailEmail   #9488f2 NONE 069 

" Markdown highlighting 
Hi markdownCode             #19ae9a NONE 042 
Hi markdownError            #99adab #1b2221 247 234 
Hi markdownCodeBlock        #19ae9a NONE 042 
Hi markdownHeadingDelimiter #659efb NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #9488f2 NONE 069 
Hi NERDTreeExecFile #99adab NONE 247 

" PHP highlighting 
Hi phpMemberSelector #99adab NONE 247 
Hi phpComparison     #99adab NONE 247 
Hi phpParent         #526663  NONE 240  
Hi phpVarSelector    #5a96f6 NONE 045 

" Python highlighting 
Hi pythonOperator #20b632 NONE 142 
Hi pythonRepeat   #20b632 NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #9488f2 NONE 069 
Hi rubyConstant               #22bf34 NONE 142 
Hi rubyInterpolation          #19ae9a NONE 042 
Hi rubyInterpolationDelimiter #5a96f6 NONE 045 
Hi rubyRegexp                 #5a96f6 NONE 045 
Hi rubySymbol                 #19ae9a NONE 042 
Hi rubyStringDelimiter        #5a96f6 NONE 045 

" SASS highlighting 
Hi sassidChar       #aba1f7 NONE 147 
Hi sassClassChar    #659efb NONE 045 
Hi sassInclude      #20b632 NONE 142 
Hi sassMixing       #20b632 NONE 142 
Hi sassMixinName    #9488f2 NONE 069 
Hi scssAttribute    #526663  NONE 240  
Hi scssDefinition   #526663  NONE 240  
Hi scssFunctionName #1bbba6 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #19ae9a #364442 042 237 
Hi SignifySignChange #9488f2 #364442 069 237 
Hi SignifySignDelete #aba1f7 #364442 147 237 

" Spelling highlighting 
Hi SpellBad   #aba1f7 #1b2221 147 234 undercurl undercurl 
Hi SpellLocal #5a96f6 #1b2221 045 234 undercurl undercurl 
Hi SpellCap   #9488f2 #1b2221 069 234 undercurl undercurl 
Hi SpellRare  #20b632 #1b2221 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#99adab guibg=s:#5a96f6 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#2d3937"   
  let g:terminal_color_1  = "#887af0"  
  let g:terminal_color_2  = "#647d79"  
  let g:terminal_color_3  = "#6d8884"  
  let g:terminal_color_4  = "#8ea4a1"  
  let g:terminal_color_5  = "#99adab"  
  let g:terminal_color_6  = "#dce5e4"  
  let g:terminal_color_7  = "#f6f9f8"  
  let g:terminal_color_8  = "#aba1f7"  
  let g:terminal_color_9  = "#659efb"  
  let g:terminal_color_10 = "#20b632"  
  let g:terminal_color_11 = "#006658 " 
  let g:terminal_color_12 = "#5a96f6"  
  let g:terminal_color_13 = "#9488f2"  
  let g:terminal_color_14 = "#20b632"  
  let g:terminal_color_15 = "#364442 " 
endif 

