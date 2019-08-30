" colorscheme: Base4Tone_Classic_S by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_S_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_S_Light" 

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
Hi Debug        #932d1f NONE 057 
Hi Directory    #8a2ac6 NONE 030 
Hi Error        #e1dde4 #932d1f 253 
Hi ErrorMsg     #932d1f #e1dde4 057 
Hi Exception    #932d1f NONE 057 
Hi FoldColumn   #ce2c93 #cdc7d1 039 251 
Hi Folded       #908994 #cdc7d1 245 251 
Hi IncSearch    #3925d0 #c0b8f9 058 191 
Hi Macro        #932d1f NONE 057 
Hi MatchParen   #e1dde4 #908994 253 245 
Hi ModeMsg      #9e42d7 NONE 036 
Hi MoreMsg      #9e42d7 NONE 036 
Hi Question     #e76655 NONE 069 
Hi Search       #e1dde4 #887af0 253 142 
Hi SpecialKey   #908994 NONE 245 
Hi TooLong      #932d1f NONE 057 
Hi Underlined   #8f1e66 NONE 020 
Hi Ignore       #c3bcc7  NONE 250  
Hi Visual       NONE #cdc7d1 NONE 251 
Hi VisualNOS    #932d1f NONE 057 
Hi WarningMsg   #932d1f NONE 057 
Hi WildMenu     #f6f6f9 #6e5fe3 015 106
Hi Menu         #f6f6f9 #6e5fe3 015 106
Hi Scrollbar    #f6f6f9 #6e5fe3 015 106
Hi Tooltip      #f6f6f9 #6e5fe3 015 106
Hi Title        #8f1e66 NONE 020 NONE NONE 
Hi Conceal      #e76655 #e1dde4 069 253 
Hi Cursor       #f8f6f9 #a9a8b3 015 248 
Hi NonText      #908994 NONE 245 
Hi Normal       #120519 #ebe8ed 000 254 
Hi LineNr       #b9b2bd #e1dde4  249 253  
Hi SignColumn   #cdc7d1 #9a949e 251 246 
Hi StatusLine   #afa8b3 #e1dde4 248 253 NONE NONE 
Hi StatusLineNC #9a949e #d7d2db 246 252 NONE NONE 
Hi VertSplit    #ebe8ed #ebe8ed 254 254 
Hi CursorColumn NONE #3e3a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #e1dde4 NONE 253 NONE NONE 
Hi CursorLineNr #a49ea9 #d7d2db 247 252 
Hi PMenu        #726b76 #e1dde4 242 253 
Hi PMenuSel     #c3bcc7 #e1dde4 250 253 
Hi TabLine      #908994 #e1dde4 245 253 
Hi TabLineFill  #908994 #e1dde4 245 253 
Hi TabLineSel   #9e42d7 #e1dde4 036 253 

" Standard syntax highlighting 
Hi Boolean      #bd2887 NONE 021 
Hi Character    #932d1f NONE 057 
Hi Comment      #afa8b3  NONE 248  
Hi Conditional  #6e5fe3 NONE 106 
Hi Constant     #4b38dc NONE 100 
Hi Define       #6e5fe3 NONE 106 
Hi Delimiter    #e755b1 NONE 045 
Hi Float        #bd2887 NONE 021 
Hi Function     #bd2887 NONE 021 
Hi Identifier   #4e4e56 NONE 239 
Hi Include      #bd3a28 NONE 000 
Hi Keyword      #6e5fe3 NONE 106 
Hi Label        #6e5fe3 NONE 106 
Hi Number       #15040f NONE 017 
Hi Operator     #343036 NONE 236 
Hi PreProc      #6e5fe3 NONE 106 
Hi Repeat       #6e5fe3 NONE 106 
Hi Special      #7524a8 NONE 030 
Hi SpecialChar  #d34431 NONE 063 
Hi Statement    #581b7e NONE 022 NONE NONE 
Hi StorageClass #721851 NONE 019 
Hi String       #4c176d NONE 024 
Hi Structure    #6e5fe3 NONE 106 
Hi Tag          #6e5fe3 NONE 106 
Hi Todo         #3321ba #daacf6 058 049 
Hi Type         #4b38dc NONE 100 NONE NONE NONE 
Hi Typedef      #6e5fe3 NONE 106 
Hi Noise        #afa8b3 NONE  248 

" C highlighting 
Hi cOperator  #ce2c93 NONE 039 
Hi cPreCondit #6e5fe3 NONE 106 

" C# highlighting 
Hi csClass                #6e5fe3 NONE 106 
Hi csAttribute            #6e5fe3 NONE 106 
Hi csModifier             #6e5fe3 NONE 106 
Hi csType                 #932d1f NONE 057 
Hi csUnspecifiedStatement #bd3a28 NONE 000 
Hi csContextualStatement  #6e5fe3 NONE 106 
Hi csNewDecleration       #932d1f NONE 057 

" CSS highlighting 
Hi cssBraces     #b9b2bd  NONE 249  
Hi cssClassName  #4e4e56 NONE 239 
Hi cssColor      #9e42d7 NONE 036 
Hi cssImportant  #d64f3d NONE 063 

" Diff highlighting 
Hi DiffAdd     #9e42d7 #c3bcc7 036 250 
Hi DiffChange  #908994 #c3bcc7 245 250 
Hi DiffDelete  #932d1f #c3bcc7 057 250 
Hi DiffText    #bd3a28 #c3bcc7 000 250 
Hi DiffAdded   #9e42d7 #ebe8ed 036 254 
Hi DiffFile    #932d1f #ebe8ed 057 254 
Hi DiffNewFile #9e42d7 #ebe8ed 036 254 
Hi DiffLine    #bd3a28 #ebe8ed 000 254 
Hi DiffRemoved #932d1f #ebe8ed 057 254 

" Git highlighting 
Hi gitCommitOverflow #932d1f NONE 057 
Hi gitCommitSummary  #67616b NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #9e42d7 #c3bcc7 036 250 
Hi GitGutterChange #bd3a28 #c3bcc7 000 250 
Hi GitGutterDelete #932d1f #c3bcc7 057 250 
Hi GitGutterChangeDelete #6e5fe3 #c3bcc7 106 250 

" XML highlighting 
Hi xmlTag     #afa8b3 NONE 248  
Hi xmlEndTag  #afa8b3 NONE 248  
Hi xmlTagName #7c7481 NONE 243  

" HTML highlighting 
Hi htmlBold      #8f1e66 NONE 020 
Hi htmlItalic    #5d1442 NONE 018 
Hi htmlTag       #afa8b3  NONE 248  
Hi htmlEndTag    #afa8b3  NONE 248  
Hi htmlStatement #8a2ac6 NONE 030 

" JavaScript highlighting 
Hi javaScript          #67616b NONE 241 
Hi javaScriptBraces    #afa8b3  NONE 248  
Hi javaScriptNumber    #bd2887 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #bd3a28 NONE 000 
Hi jsStatement         #6e5fe3 NONE 106 
Hi jsReturn            #6e5fe3 NONE 106 
Hi jsThis              #932d1f NONE 057 
Hi jsClassDefinition   #6e5fe3 NONE 106 
Hi jsFunction          #6e5fe3 NONE 106 
Hi jsFuncName          #bd3a28 NONE 000 
Hi jsFuncCall          #bd3a28 NONE 000 
Hi jsClassFuncName     #bd3a28 NONE 000 
Hi jsClassMethodType   #6e5fe3 NONE 106 
Hi jsRegexpString      #ce2c93 NONE 039 
Hi jsGlobalObjects     #6e5fe3 NONE 106 
Hi jsGlobalNodeObjects #6e5fe3 NONE 106 
Hi jsExceptions        #6e5fe3 NONE 106 
Hi jsBuiltins          #6e5fe3 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #6e5fe3 NONE 106 
Hi mailQuoted2 #9e42d7 NONE 036 
Hi mailQuoted3 #6e5fe3 NONE 106 
Hi mailQuoted4 #ce2c93 NONE 039 
Hi mailQuoted5 #bd3a28 NONE 000 
Hi mailQuoted6 #6e5fe3 NONE 106 
Hi mailURL     #bd3a28 NONE 000 
Hi mailEmail   #bd3a28 NONE 000 

" Markdown highlighting 
Hi markdownCode             #9e42d7 NONE 036 
Hi markdownError            #67616b #e1dde4 241 253 
Hi markdownCodeBlock        #9e42d7 NONE 036 
Hi markdownHeadingDelimiter #bd2887 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #bd3a28 NONE 000 
Hi NERDTreeExecFile #67616b NONE 241 

" PHP highlighting 
Hi phpMemberSelector #67616b NONE 241 
Hi phpComparison     #67616b NONE 241 
Hi phpParent         #afa8b3  NONE 248  
Hi phpVarSelector    #ce2c93 NONE 039 

" Python highlighting 
Hi pythonOperator #6e5fe3 NONE 106 
Hi pythonRepeat   #6e5fe3 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #bd3a28 NONE 000 
Hi rubyConstant               #6656e1 NONE 100 
Hi rubyInterpolation          #9e42d7 NONE 036 
Hi rubyInterpolationDelimiter #ce2c93 NONE 039 
Hi rubyRegexp                 #ce2c93 NONE 039 
Hi rubySymbol                 #9e42d7 NONE 036 
Hi rubyStringDelimiter        #ce2c93 NONE 039 

" SASS highlighting 
Hi sassidChar       #932d1f NONE 057 
Hi sassClassChar    #bd2887 NONE 021 
Hi sassInclude      #6e5fe3 NONE 106 
Hi sassMixing       #6e5fe3 NONE 106 
Hi sassMixinName    #bd3a28 NONE 000 
Hi scssAttribute    #afa8b3  NONE 248  
Hi scssDefinition   #afa8b3  NONE 248  
Hi scssFunctionName #9939d5 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #9e42d7 #c3bcc7 036 250 
Hi SignifySignChange #bd3a28 #c3bcc7 000 250 
Hi SignifySignDelete #932d1f #c3bcc7 057 250 

" Spelling highlighting 
Hi SpellBad   #932d1f #ebe8ed 057 254 undercurl undercurl 
Hi SpellLocal #ce2c93 #ebe8ed 039 254 undercurl undercurl 
Hi SpellCap   #bd3a28 #ebe8ed 000 254 undercurl undercurl 
Hi SpellRare  #6e5fe3 #ebe8ed 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#67616b guibg=s:#ce2c93 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#cdc7d1"   
  let g:terminal_color_1  = "#d34431"  
  let g:terminal_color_2  = "#9a949e"  
  let g:terminal_color_3  = "#908994"  
  let g:terminal_color_4  = "#726b76"  
  let g:terminal_color_5  = "#67616b"  
  let g:terminal_color_6  = "#1f1d20"  
  let g:terminal_color_7  = "#0b070d"  
  let g:terminal_color_8  = "#932d1f"  
  let g:terminal_color_9  = "#bd2887"  
  let g:terminal_color_10 = "#6e5fe3"  
  let g:terminal_color_11 = "#c988f2 " 
  let g:terminal_color_12 = "#ce2c93"  
  let g:terminal_color_13 = "#bd3a28"  
  let g:terminal_color_14 = "#6e5fe3"  
  let g:terminal_color_15 = "#cdc7d1 " 
endif 

