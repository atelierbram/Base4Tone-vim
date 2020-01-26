" colorscheme: Base4Tone_Classic_U by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_U_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_U_Light" 

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
Hi Debug        #8f481e NONE 057 
Hi Directory    #a42395 NONE 030 
Hi Error        #e4dde3 #8f481e 253 
Hi ErrorMsg     #8f481e #e4dde3 057 
Hi Exception    #8f481e NONE 057 
Hi FoldColumn   #d33146 #d1c7d0 039 251 
Hi Folded       #948993 #d1c7d0 245 251 
Hi IncSearch    #581b7e #daacf6 058 191 
Hi Macro        #8f481e NONE 057 
Hi MatchParen   #d435c2 #c3bcc7 036 250 
Hi ModeMsg      #ce2cbb NONE 036 
Hi MoreMsg      #ce2cbb NONE 036 
Hi Question     #e47b3f NONE 069 
Hi Search       #e4dde3 #b35ee8 253 142 
Hi SpecialKey   #948993 NONE 245 
Hi TooLong      #8f481e NONE 057 
Hi Underlined   #931f2f NONE 020 
Hi Ignore       #c7bcc6  NONE 250  
Hi Visual       NONE #d1c7d0 NONE 251 
Hi VisualNOS    #8f481e NONE 057 
Hi WarningMsg   #8f481e NONE 057 
Hi WildMenu     #f8f6f9 #9e42d7 015 106
Hi Menu         #f8f6f9 #9e42d7 015 106
Hi Scrollbar    #f8f6f9 #9e42d7 015 106
Hi Tooltip      #f8f6f9 #9e42d7 015 106
Hi Title        #931f2f NONE 020 NONE NONE 
Hi Conceal      #e47b3f #e4dde3 069 253 
Hi Cursor       #f9f6f8 #afa8b3 015 248 
Hi NonText      #948993 NONE 245 
Hi Normal       #150413 #ede8ed 000 254 
Hi LineNr       #bdb2bc #e4dde3 249 253  
Hi SignColumn   #d1c7d0 #9e949d 251 246 
Hi StatusLine   #b3a8b2 #e4dde3 248 253 NONE NONE 
Hi StatusLineNC #9e949d #dbd2da 246 252 NONE NONE 
Hi VertSplit    #ede8ed #ede8ed 254 254 
Hi CursorColumn NONE #403a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #e4dde3 NONE 253 NONE NONE 
Hi CursorLineNr #a99ea7 #dbd2da 247 252 
Hi PMenu        #766b75 #e4dde3 242 253 
Hi PMenuSel     #c7bcc6 #e4dde3 250 253 
Hi TabLine      #948993 #e4dde3 245 253 
Hi TabLineFill  #948993 #e4dde3 245 253 
Hi TabLineSel   #ce2cbb #e4dde3 036 253 

" Standard syntax highlighting 
Hi Boolean      #bd283c NONE 021 
Hi Character    #8f481e NONE 057 
Hi Comment      #b3a8b2  NONE 248  
Hi Conditional  #9e42d7 NONE 106 
Hi Constant     #7524a8 NONE 100 
Hi Define       #9e42d7 NONE 106 
Hi Delimiter    #e75569 NONE 045 
Hi Float        #bd283c NONE 021 
Hi Function     #bd283c NONE 021 
Hi Identifier   #534e56 NONE 239 
Hi Include      #b15925 NONE 000 
Hi Keyword      #9e42d7 NONE 106 
Hi Label        #9e42d7 NONE 106 
Hi Number       #190508 NONE 017 
Hi Operator     #363035 NONE 236 
Hi PreProc      #9e42d7 NONE 106 
Hi Repeat       #9e42d7 NONE 106 
Hi Special      #8b1d7e NONE 030 
Hi SpecialChar  #c26129 NONE 063 
Hi Statement    #6d1763 NONE 022 NONE NONE 
Hi StorageClass #7a1a27 NONE 019 
Hi String       #581350 NONE 024 
Hi Structure    #9e42d7 NONE 106 
Hi Tag          #9e42d7 NONE 106 
Hi Todo         #4c176d #f5a3eb 058 049 
Hi Type         #7524a8 NONE 100 NONE NONE NONE 
Hi Typedef      #9e42d7 NONE 106 
Hi Noise        #b3a8b2 NONE  248 

" C highlighting 
Hi cOperator  #d33146 NONE 039 
Hi cPreCondit #9e42d7 NONE 106 

" C# highlighting 
Hi csClass                #9e42d7 NONE 106 
Hi csAttribute            #9e42d7 NONE 106 
Hi csModifier             #9e42d7 NONE 106 
Hi csType                 #8f481e NONE 057 
Hi csUnspecifiedStatement #b15925 NONE 000 
Hi csContextualStatement  #9e42d7 NONE 106 
Hi csNewDecleration       #8f481e NONE 057 

" CSS highlighting 
Hi cssBraces     #bdb2bc  NONE 249  
Hi cssClassName  #534e56 NONE 239 
Hi cssColor      #ce2cbb NONE 036 
Hi cssImportant  #ce672c NONE 063 

" Diff highlighting 
Hi DiffAdd     #ce2cbb #c7bcc6 036 250 
Hi DiffChange  #948993 #c7bcc6 245 250 
Hi DiffDelete  #8f481e #c7bcc6 057 250 
Hi DiffText    #b15925 #c7bcc6 000 250 
Hi DiffAdded   #ce2cbb #ede8ed 036 254 
Hi DiffFile    #8f481e #ede8ed 057 254 
Hi DiffNewFile #ce2cbb #ede8ed 036 254 
Hi DiffLine    #b15925 #ede8ed 000 254 
Hi DiffRemoved #8f481e #ede8ed 057 254 

" Git highlighting 
Hi gitCommitOverflow #8f481e NONE 057 
Hi gitCommitSummary  #6b616a NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #ce2cbb #c7bcc6 036 250 
Hi GitGutterChange #b15925 #c7bcc6 000 250 
Hi GitGutterDelete #8f481e #c7bcc6 057 250 
Hi GitGutterChangeDelete #9e42d7 #c7bcc6 106 250 

" XML highlighting 
Hi xmlTag     #b3a8b2 NONE 248  
Hi xmlEndTag  #b3a8b2 NONE 248  
Hi xmlTagName #81747f NONE 243  

" HTML highlighting 
Hi htmlBold      #931f2f NONE 020 
Hi htmlItalic    #651520 NONE 018 
Hi htmlTag       #b3a8b2  NONE 248  
Hi htmlEndTag    #b3a8b2  NONE 248  
Hi htmlStatement #a42395 NONE 030 

" JavaScript highlighting 
Hi javaScript          #6b616a NONE 241 
Hi javaScriptBraces    #b3a8b2  NONE 248  
Hi javaScriptNumber    #bd283c NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #b15925 NONE 000 
Hi jsStatement         #9e42d7 NONE 106 
Hi jsReturn            #9e42d7 NONE 106 
Hi jsThis              #8f481e NONE 057 
Hi jsClassDefinition   #9e42d7 NONE 106 
Hi jsFunction          #9e42d7 NONE 106 
Hi jsFuncName          #b15925 NONE 000 
Hi jsFuncCall          #b15925 NONE 000 
Hi jsClassFuncName     #b15925 NONE 000 
Hi jsClassMethodType   #9e42d7 NONE 106 
Hi jsRegexpString      #d33146 NONE 039 
Hi jsGlobalObjects     #9e42d7 NONE 106 
Hi jsGlobalNodeObjects #9e42d7 NONE 106 
Hi jsExceptions        #9e42d7 NONE 106 
Hi jsBuiltins          #9e42d7 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #9e42d7 NONE 106 
Hi mailQuoted2 #ce2cbb NONE 036 
Hi mailQuoted3 #9e42d7 NONE 106 
Hi mailQuoted4 #d33146 NONE 039 
Hi mailQuoted5 #b15925 NONE 000 
Hi mailQuoted6 #9e42d7 NONE 106 
Hi mailURL     #b15925 NONE 000 
Hi mailEmail   #b15925 NONE 000 

" Markdown highlighting 
Hi markdownCode             #ce2cbb NONE 036 
Hi markdownError            #6b616a #e4dde3 241 253 
Hi markdownCodeBlock        #ce2cbb NONE 036 
Hi markdownHeadingDelimiter #bd283c NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #b15925 NONE 000 
Hi NERDTreeExecFile #6b616a NONE 241 

" PHP highlighting 
Hi phpMemberSelector #6b616a NONE 241 
Hi phpComparison     #6b616a NONE 241 
Hi phpParent         #b3a8b2  NONE 248  
Hi phpVarSelector    #d33146 NONE 039 

" Python highlighting 
Hi pythonOperator #9e42d7 NONE 106 
Hi pythonRepeat   #9e42d7 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #b15925 NONE 000 
Hi rubyConstant               #9939d5 NONE 100 
Hi rubyInterpolation          #ce2cbb NONE 036 
Hi rubyInterpolationDelimiter #d33146 NONE 039 
Hi rubyRegexp                 #d33146 NONE 039 
Hi rubySymbol                 #ce2cbb NONE 036 
Hi rubyStringDelimiter        #d33146 NONE 039 

" SASS highlighting 
Hi sassidChar       #8f481e NONE 057 
Hi sassClassChar    #bd283c NONE 021 
Hi sassInclude      #9e42d7 NONE 106 
Hi sassMixing       #9e42d7 NONE 106 
Hi sassMixinName    #b15925 NONE 000 
Hi scssAttribute    #b3a8b2  NONE 248  
Hi scssDefinition   #b3a8b2  NONE 248  
Hi scssFunctionName #bd28ac NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #ce2cbb #c7bcc6 036 250 
Hi SignifySignChange #b15925 #c7bcc6 000 250 
Hi SignifySignDelete #8f481e #c7bcc6 057 250 

" Spelling highlighting 
Hi SpellBad   #8f481e #ede8ed 057 254 undercurl undercurl 
Hi SpellLocal #d33146 #ede8ed 039 254 undercurl undercurl 
Hi SpellCap   #b15925 #ede8ed 000 254 undercurl undercurl 
Hi SpellRare  #9e42d7 #ede8ed 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#6b616a guibg=s:#d33146 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d1c7d0"   
  let g:terminal_color_1  = "#c26129"  
  let g:terminal_color_2  = "#9e949d"  
  let g:terminal_color_3  = "#948993"  
  let g:terminal_color_4  = "#766b75"  
  let g:terminal_color_5  = "#6b616a"  
  let g:terminal_color_6  = "#201d20"  
  let g:terminal_color_7  = "#0d070c"  
  let g:terminal_color_8  = "#8f481e"  
  let g:terminal_color_9  = "#bd283c"  
  let g:terminal_color_10 = "#9e42d7"  
  let g:terminal_color_11 = "#f17ee3 " 
  let g:terminal_color_12 = "#d33146"  
  let g:terminal_color_13 = "#b15925"  
  let g:terminal_color_14 = "#9e42d7"  
  let g:terminal_color_15 = "#d1c7d0 " 
endif 

