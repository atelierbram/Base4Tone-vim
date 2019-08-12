" colorscheme: Base4Tone_Classic_T by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_T_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_T_Light" 

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
Hi Directory    #9a25ad NONE 030 
Hi Error        #e3dde4 #8f481e 253 
Hi ErrorMsg     #8f481e #e3dde4 057 
Hi Exception    #8f481e NONE 057 
Hi FoldColumn   #d22d6c #d0c7d1 039 251 
Hi Folded       #938994 #d0c7d1 245 251 
Hi IncSearch    #531fad #cdb4f9 058 191 
Hi Macro        #8f481e NONE 057 
Hi MatchParen   #e3dde4 #938994 253 245 
Hi ModeMsg      #be31d3 NONE 036 
Hi MoreMsg      #be31d3 NONE 036 
Hi Question     #e47b3f NONE 069 
Hi Search       #e3dde4 #9c6cef 253 142 
Hi SpecialKey   #938994 NONE 245 
Hi TooLong      #8f481e NONE 057 
Hi Underlined   #931f4c NONE 020 
Hi Ignore       #c6bcc7  NONE 250  
Hi Visual       NONE #d0c7d1 NONE 251 
Hi VisualNOS    #8f481e NONE 057 
Hi WarningMsg   #8f481e NONE 057 
Hi WildMenu     #f7f6f9 #8652e0 015 106
Hi Menu         #f7f6f9 #8652e0 015 106
Hi Scrollbar    #f7f6f9 #8652e0 015 106
Hi Tooltip      #f7f6f9 #8652e0 015 106
Hi Title        #931f4c NONE 020 NONE NONE 
Hi Conceal      #e47b3f #e3dde4 069 253 
Hi Cursor       #f8f6f9 #8d8994 015 245 
Hi NonText      #938994 NONE 245 
Hi Normal       #130415 #e3dde4 000 253 
Hi LineNr       #bcb2bd #d9d2db  249 252  
Hi SignColumn   #d0c7d1 #9d949e 251 246 
Hi StatusLine   #b2a8b3 #ede8ed 248 254 NONE NONE 
Hi StatusLineNC #9d949e #d9d2db 246 252 NONE NONE 
Hi VertSplit    #e3dde4 #e3dde4 253 253 
Hi CursorColumn NONE #3f3a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #d9d2db NONE 252 NONE NONE 
Hi CursorLineNr #938994 #c6bcc7 245 250 
Hi PMenu        #746b76 #c6bcc7 242 250 
Hi PMenuSel     #c6bcc7 #746b76 250 242 
Hi TabLine      #938994 #c6bcc7 245 250 
Hi TabLineFill  #938994 #c6bcc7 245 250 
Hi TabLineSel   #be31d3 #c6bcc7 036 250 

" Standard syntax highlighting 
Hi Boolean      #bd2861 NONE 021 
Hi Character    #8f481e NONE 057 
Hi Comment      #b2a8b3  NONE 248  
Hi Conditional  #8652e0 NONE 106 
Hi Constant     #6b2bda NONE 100 
Hi Define       #8652e0 NONE 106 
Hi Delimiter    #e7558d NONE 045 
Hi Float        #bd2861 NONE 021 
Hi Function     #bd2861 NONE 021 
Hi Identifier   #514e56 NONE 239 
Hi Include      #b15925 NONE 000 
Hi Keyword      #8652e0 NONE 106 
Hi Label        #8652e0 NONE 106 
Hi Number       #15040b NONE 017 
Hi Operator     #353036 NONE 236 
Hi PreProc      #8652e0 NONE 106 
Hi Repeat       #8652e0 NONE 106 
Hi Special      #841f93 NONE 030 
Hi SpecialChar  #c26129 NONE 063 
Hi Statement    #661872 NONE 022 NONE NONE 
Hi StorageClass #76193d NONE 019 
Hi String       #53145d NONE 024 
Hi Structure    #8652e0 NONE 106 
Hi Tag          #8652e0 NONE 106 
Hi Todo         #491b98 #eaa3f5 058 049 
Hi Type         #6b2bda NONE 100 NONE NONE NONE 
Hi Typedef      #8652e0 NONE 106 
Hi Noise        #b2a8b3 NONE  248 

" C highlighting 
Hi cOperator  #d22d6c NONE 039 
Hi cPreCondit #8652e0 NONE 106 

" C# highlighting 
Hi csClass                #8652e0 NONE 106 
Hi csAttribute            #8652e0 NONE 106 
Hi csModifier             #8652e0 NONE 106 
Hi csType                 #8f481e NONE 057 
Hi csUnspecifiedStatement #b15925 NONE 000 
Hi csContextualStatement  #8652e0 NONE 106 
Hi csNewDecleration       #8f481e NONE 057 

" CSS highlighting 
Hi cssBraces     #bcb2bd  NONE 249  
Hi cssClassName  #514e56 NONE 239 
Hi cssColor      #be31d3 NONE 036 
Hi cssImportant  #ce672c NONE 063 

" Diff highlighting 
Hi DiffAdd     #be31d3 #c6bcc7 036 250 
Hi DiffChange  #938994 #c6bcc7 245 250 
Hi DiffDelete  #8f481e #c6bcc7 057 250 
Hi DiffText    #b15925 #c6bcc7 000 250 
Hi DiffAdded   #be31d3 #ede8ed 036 254 
Hi DiffFile    #8f481e #ede8ed 057 254 
Hi DiffNewFile #be31d3 #ede8ed 036 254 
Hi DiffLine    #b15925 #ede8ed 000 254 
Hi DiffRemoved #8f481e #ede8ed 057 254 

" Git highlighting 
Hi gitCommitOverflow #8f481e NONE 057 
Hi gitCommitSummary  #6a616b NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #be31d3 #c6bcc7 036 250 
Hi GitGutterChange #b15925 #c6bcc7 000 250 
Hi GitGutterDelete #8f481e #c6bcc7 057 250 
Hi GitGutterChangeDelete #8652e0 #c6bcc7 106 250 

" XML highlighting 
Hi xmlTag     #b2a8b3 NONE 248  
Hi xmlEndTag  #b2a8b3 NONE 248  
Hi xmlTagName #7f7481 NONE 243  

" HTML highlighting 
Hi htmlBold      #931f4c NONE 020 
Hi htmlItalic    #611532 NONE 018 
Hi htmlTag       #b2a8b3  NONE 248  
Hi htmlEndTag    #b2a8b3  NONE 248  
Hi htmlStatement #9a25ad NONE 030 

" JavaScript highlighting 
Hi javaScript          #6a616b NONE 241 
Hi javaScriptBraces    #b2a8b3  NONE 248  
Hi javaScriptNumber    #bd2861 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #b15925 NONE 000 
Hi jsStatement         #8652e0 NONE 106 
Hi jsReturn            #8652e0 NONE 106 
Hi jsThis              #8f481e NONE 057 
Hi jsClassDefinition   #8652e0 NONE 106 
Hi jsFunction          #8652e0 NONE 106 
Hi jsFuncName          #b15925 NONE 000 
Hi jsFuncCall          #b15925 NONE 000 
Hi jsClassFuncName     #b15925 NONE 000 
Hi jsClassMethodType   #8652e0 NONE 106 
Hi jsRegexpString      #d22d6c NONE 039 
Hi jsGlobalObjects     #8652e0 NONE 106 
Hi jsGlobalNodeObjects #8652e0 NONE 106 
Hi jsExceptions        #8652e0 NONE 106 
Hi jsBuiltins          #8652e0 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #8652e0 NONE 106 
Hi mailQuoted2 #be31d3 NONE 036 
Hi mailQuoted3 #8652e0 NONE 106 
Hi mailQuoted4 #d22d6c NONE 039 
Hi mailQuoted5 #b15925 NONE 000 
Hi mailQuoted6 #8652e0 NONE 106 
Hi mailURL     #b15925 NONE 000 
Hi mailEmail   #b15925 NONE 000 

" Markdown highlighting 
Hi markdownCode             #be31d3 NONE 036 
Hi markdownError            #6a616b #e3dde4 241 253 
Hi markdownCodeBlock        #be31d3 NONE 036 
Hi markdownHeadingDelimiter #bd2861 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #b15925 NONE 000 
Hi NERDTreeExecFile #6a616b NONE 241 

" PHP highlighting 
Hi phpMemberSelector #6a616b NONE 241 
Hi phpComparison     #6a616b NONE 241 
Hi phpParent         #b2a8b3  NONE 248  
Hi phpVarSelector    #d22d6c NONE 039 

" Python highlighting 
Hi pythonOperator #8652e0 NONE 106 
Hi pythonRepeat   #8652e0 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #b15925 NONE 000 
Hi rubyConstant               #8049df NONE 100 
Hi rubyInterpolation          #be31d3 NONE 036 
Hi rubyInterpolationDelimiter #d22d6c NONE 039 
Hi rubyRegexp                 #d22d6c NONE 039 
Hi rubySymbol                 #be31d3 NONE 036 
Hi rubyStringDelimiter        #d22d6c NONE 039 

" SASS highlighting 
Hi sassidChar       #8f481e NONE 057 
Hi sassClassChar    #bd2861 NONE 021 
Hi sassInclude      #8652e0 NONE 106 
Hi sassMixing       #8652e0 NONE 106 
Hi sassMixinName    #b15925 NONE 000 
Hi scssAttribute    #b2a8b3  NONE 248  
Hi scssDefinition   #b2a8b3  NONE 248  
Hi scssFunctionName #b52bca NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #be31d3 #c6bcc7 036 250 
Hi SignifySignChange #b15925 #c6bcc7 000 250 
Hi SignifySignDelete #8f481e #c6bcc7 057 250 

" Spelling highlighting 
Hi SpellBad   #8f481e #ede8ed 057 254 undercurl undercurl 
Hi SpellLocal #d22d6c #ede8ed 039 254 undercurl undercurl 
Hi SpellCap   #b15925 #ede8ed 000 254 undercurl undercurl 
Hi SpellRare  #8652e0 #ede8ed 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#6a616b guibg=s:#d22d6c guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d0c7d1"   
  let g:terminal_color_1  = "#c26129"  
  let g:terminal_color_2  = "#9d949e"  
  let g:terminal_color_3  = "#938994"  
  let g:terminal_color_4  = "#746b76"  
  let g:terminal_color_5  = "#6a616b"  
  let g:terminal_color_6  = "#201d20"  
  let g:terminal_color_7  = "#0c070d"  
  let g:terminal_color_8  = "#8f481e"  
  let g:terminal_color_9  = "#bd2861"  
  let g:terminal_color_10 = "#8652e0"  
  let g:terminal_color_11 = "#e17ef1 " 
  let g:terminal_color_12 = "#d22d6c"  
  let g:terminal_color_13 = "#b15925"  
  let g:terminal_color_14 = "#8652e0"  
  let g:terminal_color_15 = "#d0c7d1 " 
endif 

