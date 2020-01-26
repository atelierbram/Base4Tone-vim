" colorscheme: Base4Tone_Classic_O by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_O_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_O_Light" 

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
Hi Debug        #7524a8 NONE 057 
Hi Directory    #1a68e6 NONE 030 
Hi Error        #dcdfe5 #7524a8 253 
Hi ErrorMsg     #7524a8 #dcdfe5 057 
Hi Exception    #7524a8 NONE 057 
Hi FoldColumn   #6e5fe3 #c4cad4 039 251 
Hi Folded       #7d8ba1 #c4cad4 245 251 
Hi IncSearch    #00574b #5fe3d1 058 191 
Hi Macro        #7524a8 NONE 057 
Hi MatchParen   #397fef #bbc9c7 036 250 
Hi ModeMsg      #3077e8 NONE 036 
Hi MoreMsg      #3077e8 NONE 036 
Hi Question     #b35ee8 NONE 069 
Hi Search       #dcdfe5 #19ae9a 253 142 
Hi SpecialKey   #7d8ba1 NONE 245 
Hi TooLong      #7524a8 NONE 057 
Hi Underlined   #4b38dc NONE 020 
Hi Ignore       #b8c0cc  NONE 250  
Hi Visual       NONE #c4cad4 NONE 251 
Hi VisualNOS    #7524a8 NONE 057 
Hi WarningMsg   #7524a8 NONE 057 
Hi WildMenu     #f6f9f8 #008a77 015 106
Hi Menu         #f6f9f8 #008a77 015 106
Hi Scrollbar    #f6f9f8 #008a77 015 106
Hi Tooltip      #f6f9f8 #008a77 015 106
Hi Title        #4b38dc NONE 020 NONE NONE 
Hi Conceal      #b35ee8 #dcdfe5 069 253 
Hi Cursor       #f6f7f9 #a4b6b4 015 248 
Hi NonText      #7d8ba1 NONE 245 
Hi Normal       #05152e #e7eaee 000 254 
Hi LineNr       #acb5c3 #dcdfe5 249 253  
Hi SignColumn   #c4cad4 #8995a9 251 246 
Hi StatusLine   #a0aaba #dcdfe5 248 253 NONE NONE 
Hi StatusLineNC #8995a9 #d0d5dd 246 252 NONE NONE 
Hi VertSplit    #e7eaee #e7eaee 254 254 
Hi CursorColumn NONE #333b47 NONE 237 NONE NONE 
Hi CursorLine   NONE #dcdfe5 NONE 253 NONE NONE 
Hi CursorLineNr #95a0b2 #d0d5dd 247 252 
Hi PMenu        #5e6c82 #dcdfe5 242 253 
Hi PMenuSel     #b8c0cc #dcdfe5 250 253 
Hi TabLine      #7d8ba1 #dcdfe5 245 253 
Hi TabLineFill  #7d8ba1 #dcdfe5 245 253 
Hi TabLineSel   #3077e8 #dcdfe5 036 253 

" Standard syntax highlighting 
Hi Boolean      #6656e1 NONE 021 
Hi Character    #7524a8 NONE 057 
Hi Comment      #a0aaba  NONE 248  
Hi Conditional  #008a77 NONE 106 
Hi Constant     #007061 NONE 100 
Hi Define       #008a77 NONE 106 
Hi Delimiter    #887af0 NONE 045 
Hi Float        #6656e1 NONE 021 
Hi Function     #6656e1 NONE 021 
Hi Identifier   #495b58 NONE 239 
Hi Include      #9939d5 NONE 000 
Hi Keyword      #008a77 NONE 106 
Hi Label        #008a77 NONE 106 
Hi Number       #0d0830 NONE 017 
Hi Operator     #2b313b NONE 236 
Hi PreProc      #008a77 NONE 106 
Hi Repeat       #008a77 NONE 106 
Hi Special      #175dcf NONE 030 
Hi SpecialChar  #9e42d7 NONE 063 
Hi Statement    #1249a1 NONE 022 NONE NONE 
Hi StorageClass #3925d0 NONE 019 
Hi String       #0f3e8a NONE 024 
Hi Structure    #008a77 NONE 106 
Hi Tag          #008a77 NONE 106 
Hi Todo         #004d42 #a8caff 058 049 
Hi Type         #007061 NONE 100 NONE NONE NONE 
Hi Typedef      #008a77 NONE 106 
Hi Noise        #a0aaba NONE  248 

" C highlighting 
Hi cOperator  #6e5fe3 NONE 039 
Hi cPreCondit #008a77 NONE 106 

" C# highlighting 
Hi csClass                #008a77 NONE 106 
Hi csAttribute            #008a77 NONE 106 
Hi csModifier             #008a77 NONE 106 
Hi csType                 #7524a8 NONE 057 
Hi csUnspecifiedStatement #9939d5 NONE 000 
Hi csContextualStatement  #008a77 NONE 106 
Hi csNewDecleration       #7524a8 NONE 057 

" CSS highlighting 
Hi cssBraces     #acb5c3  NONE 249  
Hi cssClassName  #495b58 NONE 239 
Hi cssColor      #3077e8 NONE 036 
Hi cssImportant  #a24ad9 NONE 063 

" Diff highlighting 
Hi DiffAdd     #3077e8 #b8c0cc 036 250 
Hi DiffChange  #7d8ba1 #b8c0cc 245 250 
Hi DiffDelete  #7524a8 #b8c0cc 057 250 
Hi DiffText    #9939d5 #b8c0cc 000 250 
Hi DiffAdded   #3077e8 #e7eaee 036 254 
Hi DiffFile    #7524a8 #e7eaee 057 254 
Hi DiffNewFile #3077e8 #e7eaee 036 254 
Hi DiffLine    #9939d5 #e7eaee 000 254 
Hi DiffRemoved #7524a8 #e7eaee 057 254 

" Git highlighting 
Hi gitCommitOverflow #7524a8 NONE 057 
Hi gitCommitSummary  #566276 NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #3077e8 #b8c0cc 036 250 
Hi GitGutterChange #9939d5 #b8c0cc 000 250 
Hi GitGutterDelete #7524a8 #b8c0cc 057 250 
Hi GitGutterChangeDelete #008a77 #b8c0cc 106 250 

" XML highlighting 
Hi xmlTag     #a0aaba NONE 248  
Hi xmlEndTag  #a0aaba NONE 248  
Hi xmlTagName #67768e NONE 243  

" HTML highlighting 
Hi htmlBold      #4b38dc NONE 020 
Hi htmlItalic    #3321ba NONE 018 
Hi htmlTag       #a0aaba  NONE 248  
Hi htmlEndTag    #a0aaba  NONE 248  
Hi htmlStatement #1a68e6 NONE 030 

" JavaScript highlighting 
Hi javaScript          #566276 NONE 241 
Hi javaScriptBraces    #a0aaba  NONE 248  
Hi javaScriptNumber    #6656e1 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #9939d5 NONE 000 
Hi jsStatement         #008a77 NONE 106 
Hi jsReturn            #008a77 NONE 106 
Hi jsThis              #7524a8 NONE 057 
Hi jsClassDefinition   #008a77 NONE 106 
Hi jsFunction          #008a77 NONE 106 
Hi jsFuncName          #9939d5 NONE 000 
Hi jsFuncCall          #9939d5 NONE 000 
Hi jsClassFuncName     #9939d5 NONE 000 
Hi jsClassMethodType   #008a77 NONE 106 
Hi jsRegexpString      #6e5fe3 NONE 039 
Hi jsGlobalObjects     #008a77 NONE 106 
Hi jsGlobalNodeObjects #008a77 NONE 106 
Hi jsExceptions        #008a77 NONE 106 
Hi jsBuiltins          #008a77 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #008a77 NONE 106 
Hi mailQuoted2 #3077e8 NONE 036 
Hi mailQuoted3 #008a77 NONE 106 
Hi mailQuoted4 #6e5fe3 NONE 039 
Hi mailQuoted5 #9939d5 NONE 000 
Hi mailQuoted6 #008a77 NONE 106 
Hi mailURL     #9939d5 NONE 000 
Hi mailEmail   #9939d5 NONE 000 

" Markdown highlighting 
Hi markdownCode             #3077e8 NONE 036 
Hi markdownError            #566276 #dcdfe5 241 253 
Hi markdownCodeBlock        #3077e8 NONE 036 
Hi markdownHeadingDelimiter #6656e1 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #9939d5 NONE 000 
Hi NERDTreeExecFile #566276 NONE 241 

" PHP highlighting 
Hi phpMemberSelector #566276 NONE 241 
Hi phpComparison     #566276 NONE 241 
Hi phpParent         #a0aaba  NONE 248  
Hi phpVarSelector    #6e5fe3 NONE 039 

" Python highlighting 
Hi pythonOperator #008a77 NONE 106 
Hi pythonRepeat   #008a77 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #9939d5 NONE 000 
Hi rubyConstant               #00806f NONE 100 
Hi rubyInterpolation          #3077e8 NONE 036 
Hi rubyInterpolationDelimiter #6e5fe3 NONE 039 
Hi rubyRegexp                 #6e5fe3 NONE 039 
Hi rubySymbol                 #3077e8 NONE 036 
Hi rubyStringDelimiter        #6e5fe3 NONE 039 

" SASS highlighting 
Hi sassidChar       #7524a8 NONE 057 
Hi sassClassChar    #6656e1 NONE 021 
Hi sassInclude      #008a77 NONE 106 
Hi sassMixing       #008a77 NONE 106 
Hi sassMixinName    #9939d5 NONE 000 
Hi scssAttribute    #a0aaba  NONE 248  
Hi scssDefinition   #a0aaba  NONE 248  
Hi scssFunctionName #2771e7 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #3077e8 #b8c0cc 036 250 
Hi SignifySignChange #9939d5 #b8c0cc 000 250 
Hi SignifySignDelete #7524a8 #b8c0cc 057 250 

" Spelling highlighting 
Hi SpellBad   #7524a8 #e7eaee 057 254 undercurl undercurl 
Hi SpellLocal #6e5fe3 #e7eaee 039 254 undercurl undercurl 
Hi SpellCap   #9939d5 #e7eaee 000 254 undercurl undercurl 
Hi SpellRare  #008a77 #e7eaee 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#566276 guibg=s:#6e5fe3 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#c4cad4"   
  let g:terminal_color_1  = "#9e42d7"  
  let g:terminal_color_2  = "#8995a9"  
  let g:terminal_color_3  = "#7d8ba1"  
  let g:terminal_color_4  = "#5e6c82"  
  let g:terminal_color_5  = "#566276"  
  let g:terminal_color_6  = "#1a1d23"  
  let g:terminal_color_7  = "#07090d"  
  let g:terminal_color_8  = "#7524a8"  
  let g:terminal_color_9  = "#6656e1"  
  let g:terminal_color_10 = "#008a77"  
  let g:terminal_color_11 = "#88b4fc " 
  let g:terminal_color_12 = "#6e5fe3"  
  let g:terminal_color_13 = "#9939d5"  
  let g:terminal_color_14 = "#008a77"  
  let g:terminal_color_15 = "#c4cad4 " 
endif 

