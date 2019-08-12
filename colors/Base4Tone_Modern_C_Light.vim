" colorscheme: Base4Tone_Modern_C by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Modern_C_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Modern_C_Light" 

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
Hi Debug        #364ddd NONE 057 
Hi Directory    #955d04 NONE 030 
Hi Error        #e5e1dc #364ddd 253 
Hi ErrorMsg     #364ddd #e5e1dc 057 
Hi Exception    #364ddd NONE 057 
Hi FoldColumn   #008a77 #d2cdc6 039 251 
Hi Folded       #9a9184 #d2cdc6 245 251 
Hi IncSearch    #76193d #f5a3c2 058 191 
Hi Macro        #364ddd NONE 057 
Hi MatchParen   #e5e1dc #9a9184 253 245 
Hi ModeMsg      #ae6d04 NONE 036 
Hi MoreMsg      #ae6d04 NONE 036 
Hi Question     #7989f1 NONE 069 
Hi Search       #e5e1dc #e7558d 253 142 
Hi SpecialKey   #9a9184 NONE 245 
Hi TooLong      #364ddd NONE 057 
Hi Underlined   #007061 NONE 020 
Hi Ignore       #c9c3bb  NONE 250  
Hi Visual       NONE #d2cdc6 NONE 251 
Hi VisualNOS    #364ddd NONE 057 
Hi WarningMsg   #364ddd NONE 057 
Hi WildMenu     #f9f6f7 #d22d6c 015 106
Hi Menu         #f9f6f7 #d22d6c 015 106
Hi Scrollbar    #f9f6f7 #d22d6c 015 106
Hi Tooltip      #f9f6f7 #d22d6c 015 106
Hi Title        #007061 NONE 020 NONE NONE 
Hi Conceal      #7989f1 #e5e1dc 069 253 
Hi Cursor       #f9f8f6 #94898d 015 245 
Hi NonText      #9a9184 NONE 245 
Hi Normal       #191001 #e5e1dc 000 253 
Hi LineNr       #bfb9b0 #dcd7d1  249 252  
Hi SignColumn   #d2cdc6 #a39b8f 251 246 
Hi StatusLine   #b6afa5 #eeebe8 248 254 NONE NONE 
Hi StatusLineNC #a39b8f #dcd7d1 246 252 NONE NONE 
Hi VertSplit    #e5e1dc #e5e1dc 253 253 
Hi CursorColumn NONE #433f37 NONE 237 NONE NONE 
Hi CursorLine   NONE #dcd7d1 NONE 252 NONE NONE 
Hi CursorLineNr #9a9184 #c9c3bb 245 250 
Hi PMenu        #7b7365 #c9c3bb 242 250 
Hi PMenuSel     #c9c3bb #7b7365 250 242 
Hi TabLine      #9a9184 #c9c3bb 245 250 
Hi TabLineFill  #9a9184 #c9c3bb 245 250 
Hi TabLineSel   #ae6d04 #c9c3bb 036 250 

" Standard syntax highlighting 
Hi Boolean      #00806f NONE 021 
Hi Character    #364ddd NONE 057 
Hi Comment      #b6afa5  NONE 248  
Hi Conditional  #d22d6c NONE 106 
Hi Constant     #931f4c NONE 100 
Hi Define       #d22d6c NONE 106 
Hi Delimiter    #19ae9a NONE 045 
Hi Float        #00806f NONE 021 
Hi Function     #00806f NONE 021 
Hi Identifier   #564e51 NONE 239 
Hi Include      #4b60e7 NONE 000 
Hi Keyword      #d22d6c NONE 106 
Hi Label        #d22d6c NONE 106 
Hi Number       #001a16 NONE 017 
Hi Operator     #38342e NONE 236 
Hi PreProc      #d22d6c NONE 106 
Hi Repeat       #d22d6c NONE 106 
Hi Special      #8b5704 NONE 030 
Hi SpecialChar  #5468e8 NONE 063 
Hi Statement    #6d4503 NONE 022 NONE NONE 
Hi StorageClass #00574b NONE 019 
Hi String       #5a3802 NONE 024 
Hi Structure    #d22d6c NONE 106 
Hi Tag          #d22d6c NONE 106 
Hi Todo         #611532 #eeb863 058 049 
Hi Type         #931f4c NONE 100 NONE NONE NONE 
Hi Typedef      #d22d6c NONE 106 
Hi Noise        #b6afa5 NONE  248 

" C highlighting 
Hi cOperator  #008a77 NONE 039 
Hi cPreCondit #d22d6c NONE 106 

" C# highlighting 
Hi csClass                #d22d6c NONE 106 
Hi csAttribute            #d22d6c NONE 106 
Hi csModifier             #d22d6c NONE 106 
Hi csType                 #364ddd NONE 057 
Hi csUnspecifiedStatement #4b60e7 NONE 000 
Hi csContextualStatement  #d22d6c NONE 106 
Hi csNewDecleration       #364ddd NONE 057 

" CSS highlighting 
Hi cssBraces     #bfb9b0  NONE 249  
Hi cssClassName  #564e51 NONE 239 
Hi cssColor      #ae6d04 NONE 036 
Hi cssImportant  #5c6feb NONE 063 

" Diff highlighting 
Hi DiffAdd     #ae6d04 #c9c3bb 036 250 
Hi DiffChange  #9a9184 #c9c3bb 245 250 
Hi DiffDelete  #364ddd #c9c3bb 057 250 
Hi DiffText    #4b60e7 #c9c3bb 000 250 
Hi DiffAdded   #ae6d04 #eeebe8 036 254 
Hi DiffFile    #364ddd #eeebe8 057 254 
Hi DiffNewFile #ae6d04 #eeebe8 036 254 
Hi DiffLine    #4b60e7 #eeebe8 000 254 
Hi DiffRemoved #364ddd #eeebe8 057 254 

" Git highlighting 
Hi gitCommitOverflow #364ddd NONE 057 
Hi gitCommitSummary  #70685c NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #ae6d04 #c9c3bb 036 250 
Hi GitGutterChange #4b60e7 #c9c3bb 000 250 
Hi GitGutterDelete #364ddd #c9c3bb 057 250 
Hi GitGutterChangeDelete #d22d6c #c9c3bb 106 250 

" XML highlighting 
Hi xmlTag     #b6afa5 NONE 248  
Hi xmlEndTag  #b6afa5 NONE 248  
Hi xmlTagName #877d6e NONE 243  

" HTML highlighting 
Hi htmlBold      #007061 NONE 020 
Hi htmlItalic    #004d42 NONE 018 
Hi htmlTag       #b6afa5  NONE 248  
Hi htmlEndTag    #b6afa5  NONE 248  
Hi htmlStatement #955d04 NONE 030 

" JavaScript highlighting 
Hi javaScript          #70685c NONE 241 
Hi javaScriptBraces    #b6afa5  NONE 248  
Hi javaScriptNumber    #00806f NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #4b60e7 NONE 000 
Hi jsStatement         #d22d6c NONE 106 
Hi jsReturn            #d22d6c NONE 106 
Hi jsThis              #364ddd NONE 057 
Hi jsClassDefinition   #d22d6c NONE 106 
Hi jsFunction          #d22d6c NONE 106 
Hi jsFuncName          #4b60e7 NONE 000 
Hi jsFuncCall          #4b60e7 NONE 000 
Hi jsClassFuncName     #4b60e7 NONE 000 
Hi jsClassMethodType   #d22d6c NONE 106 
Hi jsRegexpString      #008a77 NONE 039 
Hi jsGlobalObjects     #d22d6c NONE 106 
Hi jsGlobalNodeObjects #d22d6c NONE 106 
Hi jsExceptions        #d22d6c NONE 106 
Hi jsBuiltins          #d22d6c NONE 106 

" Mail highlighting 
Hi mailQuoted1 #d22d6c NONE 106 
Hi mailQuoted2 #ae6d04 NONE 036 
Hi mailQuoted3 #d22d6c NONE 106 
Hi mailQuoted4 #008a77 NONE 039 
Hi mailQuoted5 #4b60e7 NONE 000 
Hi mailQuoted6 #d22d6c NONE 106 
Hi mailURL     #4b60e7 NONE 000 
Hi mailEmail   #4b60e7 NONE 000 

" Markdown highlighting 
Hi markdownCode             #ae6d04 NONE 036 
Hi markdownError            #70685c #e5e1dc 241 253 
Hi markdownCodeBlock        #ae6d04 NONE 036 
Hi markdownHeadingDelimiter #00806f NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #4b60e7 NONE 000 
Hi NERDTreeExecFile #70685c NONE 241 

" PHP highlighting 
Hi phpMemberSelector #70685c NONE 241 
Hi phpComparison     #70685c NONE 241 
Hi phpParent         #b6afa5  NONE 248  
Hi phpVarSelector    #008a77 NONE 039 

" Python highlighting 
Hi pythonOperator #d22d6c NONE 106 
Hi pythonRepeat   #d22d6c NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #4b60e7 NONE 000 
Hi rubyConstant               #bd2861 NONE 100 
Hi rubyInterpolation          #ae6d04 NONE 036 
Hi rubyInterpolationDelimiter #008a77 NONE 039 
Hi rubyRegexp                 #008a77 NONE 039 
Hi rubySymbol                 #ae6d04 NONE 036 
Hi rubyStringDelimiter        #008a77 NONE 039 

" SASS highlighting 
Hi sassidChar       #364ddd NONE 057 
Hi sassClassChar    #00806f NONE 021 
Hi sassInclude      #d22d6c NONE 106 
Hi sassMixing       #d22d6c NONE 106 
Hi sassMixinName    #4b60e7 NONE 000 
Hi scssAttribute    #b6afa5  NONE 248  
Hi scssDefinition   #b6afa5  NONE 248  
Hi scssFunctionName #9f6404 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #ae6d04 #c9c3bb 036 250 
Hi SignifySignChange #4b60e7 #c9c3bb 000 250 
Hi SignifySignDelete #364ddd #c9c3bb 057 250 

" Spelling highlighting 
Hi SpellBad   #364ddd #eeebe8 057 254 undercurl undercurl 
Hi SpellLocal #008a77 #eeebe8 039 254 undercurl undercurl 
Hi SpellCap   #4b60e7 #eeebe8 000 254 undercurl undercurl 
Hi SpellRare  #d22d6c #eeebe8 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#70685c guibg=s:#008a77 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d2cdc6"   
  let g:terminal_color_1  = "#5468e8"  
  let g:terminal_color_2  = "#a39b8f"  
  let g:terminal_color_3  = "#9a9184"  
  let g:terminal_color_4  = "#7b7365"  
  let g:terminal_color_5  = "#70685c"  
  let g:terminal_color_6  = "#221f1c"  
  let g:terminal_color_7  = "#0d0b07"  
  let g:terminal_color_8  = "#364ddd"  
  let g:terminal_color_9  = "#00806f"  
  let g:terminal_color_10 = "#d22d6c"  
  let g:terminal_color_11 = "#e8a02c " 
  let g:terminal_color_12 = "#008a77"  
  let g:terminal_color_13 = "#4b60e7"  
  let g:terminal_color_14 = "#d22d6c"  
  let g:terminal_color_15 = "#d2cdc6 " 
endif 

