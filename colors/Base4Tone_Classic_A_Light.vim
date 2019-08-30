" colorscheme: Base4Tone_Classic_A by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_A_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_A_Light" 

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
Hi Debug        #6a7703 NONE 057 
Hi Directory    #a83324 NONE 030 
Hi Error        #e5dddc #6a7703 253 
Hi ErrorMsg     #6a7703 #e5dddc 057 
Hi Exception    #6a7703 NONE 057 
Hi FoldColumn   #ae6d04 #d2c7c6 039 251 
Hi Folded       #988886 #d2c7c6 245 251 
Hi IncSearch    #721851 #f5a3d7 058 191 
Hi Macro        #6a7703 NONE 057 
Hi MatchParen   #e5dddc #988886 253 245 
Hi ModeMsg      #d34431 NONE 036 
Hi MoreMsg      #d34431 NONE 036 
Hi Question     #a4b80a NONE 069 
Hi Search       #e5dddc #e755b1 253 142 
Hi SpecialKey   #988886 NONE 245 
Hi TooLong      #6a7703 NONE 057 
Hi Underlined   #8b5704 NONE 020 
Hi Ignore       #c9bdbb  NONE 250  
Hi Visual       NONE #d2c7c6 NONE 251 
Hi VisualNOS    #6a7703 NONE 057 
Hi WarningMsg   #6a7703 NONE 057 
Hi WildMenu     #f9f6f8 #ce2c93 015 106
Hi Menu         #f9f6f8 #ce2c93 015 106
Hi Scrollbar    #f9f6f8 #ce2c93 015 106
Hi Tooltip      #f9f6f8 #ce2c93 015 106
Hi Title        #8b5704 NONE 020 NONE NONE 
Hi Conceal      #a4b80a #e5dddc 069 253 
Hi Cursor       #f9f6f6 #b3a8af 015 248 
Hi NonText      #988886 NONE 245 
Hi Normal       #190805 #eee8e8 000 254 
Hi LineNr       #bfb2b0 #e5dddc  249 253  
Hi SignColumn   #d2c7c6 #a19391 251 246 
Hi StatusLine   #b5a8a6 #e5dddc 248 253 NONE NONE 
Hi StatusLineNC #a19391 #dcd2d1 246 252 NONE NONE 
Hi VertSplit    #eee8e8 #eee8e8 254 254 
Hi CursorColumn NONE #423938 NONE 237 NONE NONE 
Hi CursorLine   NONE #e5dddc NONE 253 NONE NONE 
Hi CursorLineNr #ab9e9c #dcd2d1 247 252 
Hi PMenu        #796967 #e5dddc 242 253 
Hi PMenuSel     #c9bdbb #e5dddc 250 253 
Hi TabLine      #988886 #e5dddc 245 253 
Hi TabLineFill  #988886 #e5dddc 245 253 
Hi TabLineSel   #d34431 #e5dddc 036 253 

" Standard syntax highlighting 
Hi Boolean      #9f6404 NONE 021 
Hi Character    #6a7703 NONE 057 
Hi Comment      #b5a8a6  NONE 248  
Hi Conditional  #ce2c93 NONE 106 
Hi Constant     #8f1e66 NONE 100 
Hi Define       #ce2c93 NONE 106 
Hi Delimiter    #d5880b NONE 045 
Hi Float        #9f6404 NONE 021 
Hi Function     #9f6404 NONE 021 
Hi Identifier   #564e53 NONE 239 
Hi Include      #7b8b04 NONE 000 
Hi Keyword      #ce2c93 NONE 106 
Hi Label        #ce2c93 NONE 106 
Hi Number       #191001 NONE 017 
Hi Operator     #37302f NONE 236 
Hi PreProc      #ce2c93 NONE 106 
Hi Repeat       #ce2c93 NONE 106 
Hi Special      #932d1f NONE 030 
Hi SpecialChar  #849504 NONE 063 
Hi Statement    #7a251a NONE 022 NONE NONE 
Hi StorageClass #6d4503 NONE 019 
Hi String       #651f15 NONE 024 
Hi Structure    #ce2c93 NONE 106 
Hi Tag          #ce2c93 NONE 106 
Hi Todo         #5d1442 #f5ada3 058 049 
Hi Type         #8f1e66 NONE 100 NONE NONE NONE 
Hi Typedef      #ce2c93 NONE 106 
Hi Noise        #b5a8a6 NONE  248 

" C highlighting 
Hi cOperator  #ae6d04 NONE 039 
Hi cPreCondit #ce2c93 NONE 106 

" C# highlighting 
Hi csClass                #ce2c93 NONE 106 
Hi csAttribute            #ce2c93 NONE 106 
Hi csModifier             #ce2c93 NONE 106 
Hi csType                 #6a7703 NONE 057 
Hi csUnspecifiedStatement #7b8b04 NONE 000 
Hi csContextualStatement  #ce2c93 NONE 106 
Hi csNewDecleration       #6a7703 NONE 057 

" CSS highlighting 
Hi cssBraces     #bfb2b0  NONE 249  
Hi cssClassName  #564e53 NONE 239 
Hi cssColor      #d34431 NONE 036 
Hi cssImportant  #8d9f04 NONE 063 

" Diff highlighting 
Hi DiffAdd     #d34431 #c9bdbb 036 250 
Hi DiffChange  #988886 #c9bdbb 245 250 
Hi DiffDelete  #6a7703 #c9bdbb 057 250 
Hi DiffText    #7b8b04 #c9bdbb 000 250 
Hi DiffAdded   #d34431 #eee8e8 036 254 
Hi DiffFile    #6a7703 #eee8e8 057 254 
Hi DiffNewFile #d34431 #eee8e8 036 254 
Hi DiffLine    #7b8b04 #eee8e8 000 254 
Hi DiffRemoved #6a7703 #eee8e8 057 254 

" Git highlighting 
Hi gitCommitOverflow #6a7703 NONE 057 
Hi gitCommitSummary  #6e605e NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #d34431 #c9bdbb 036 250 
Hi GitGutterChange #7b8b04 #c9bdbb 000 250 
Hi GitGutterDelete #6a7703 #c9bdbb 057 250 
Hi GitGutterChangeDelete #ce2c93 #c9bdbb 106 250 

" XML highlighting 
Hi xmlTag     #b5a8a6 NONE 248  
Hi xmlEndTag  #b5a8a6 NONE 248  
Hi xmlTagName #847371 NONE 243  

" HTML highlighting 
Hi htmlBold      #8b5704 NONE 020 
Hi htmlItalic    #5a3802 NONE 018 
Hi htmlTag       #b5a8a6  NONE 248  
Hi htmlEndTag    #b5a8a6  NONE 248  
Hi htmlStatement #a83324 NONE 030 

" JavaScript highlighting 
Hi javaScript          #6e605e NONE 241 
Hi javaScriptBraces    #b5a8a6  NONE 248  
Hi javaScriptNumber    #9f6404 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #7b8b04 NONE 000 
Hi jsStatement         #ce2c93 NONE 106 
Hi jsReturn            #ce2c93 NONE 106 
Hi jsThis              #6a7703 NONE 057 
Hi jsClassDefinition   #ce2c93 NONE 106 
Hi jsFunction          #ce2c93 NONE 106 
Hi jsFuncName          #7b8b04 NONE 000 
Hi jsFuncCall          #7b8b04 NONE 000 
Hi jsClassFuncName     #7b8b04 NONE 000 
Hi jsClassMethodType   #ce2c93 NONE 106 
Hi jsRegexpString      #ae6d04 NONE 039 
Hi jsGlobalObjects     #ce2c93 NONE 106 
Hi jsGlobalNodeObjects #ce2c93 NONE 106 
Hi jsExceptions        #ce2c93 NONE 106 
Hi jsBuiltins          #ce2c93 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #ce2c93 NONE 106 
Hi mailQuoted2 #d34431 NONE 036 
Hi mailQuoted3 #ce2c93 NONE 106 
Hi mailQuoted4 #ae6d04 NONE 039 
Hi mailQuoted5 #7b8b04 NONE 000 
Hi mailQuoted6 #ce2c93 NONE 106 
Hi mailURL     #7b8b04 NONE 000 
Hi mailEmail   #7b8b04 NONE 000 

" Markdown highlighting 
Hi markdownCode             #d34431 NONE 036 
Hi markdownError            #6e605e #e5dddc 241 253 
Hi markdownCodeBlock        #d34431 NONE 036 
Hi markdownHeadingDelimiter #9f6404 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #7b8b04 NONE 000 
Hi NERDTreeExecFile #6e605e NONE 241 

" PHP highlighting 
Hi phpMemberSelector #6e605e NONE 241 
Hi phpComparison     #6e605e NONE 241 
Hi phpParent         #b5a8a6  NONE 248  
Hi phpVarSelector    #ae6d04 NONE 039 

" Python highlighting 
Hi pythonOperator #ce2c93 NONE 106 
Hi pythonRepeat   #ce2c93 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #7b8b04 NONE 000 
Hi rubyConstant               #bd2887 NONE 100 
Hi rubyInterpolation          #d34431 NONE 036 
Hi rubyInterpolationDelimiter #ae6d04 NONE 039 
Hi rubyRegexp                 #ae6d04 NONE 039 
Hi rubySymbol                 #d34431 NONE 036 
Hi rubyStringDelimiter        #ae6d04 NONE 039 

" SASS highlighting 
Hi sassidChar       #6a7703 NONE 057 
Hi sassClassChar    #9f6404 NONE 021 
Hi sassInclude      #ce2c93 NONE 106 
Hi sassMixing       #ce2c93 NONE 106 
Hi sassMixinName    #7b8b04 NONE 000 
Hi scssAttribute    #b5a8a6  NONE 248  
Hi scssDefinition   #b5a8a6  NONE 248  
Hi scssFunctionName #bd3a28 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #d34431 #c9bdbb 036 250 
Hi SignifySignChange #7b8b04 #c9bdbb 000 250 
Hi SignifySignDelete #6a7703 #c9bdbb 057 250 

" Spelling highlighting 
Hi SpellBad   #6a7703 #eee8e8 057 254 undercurl undercurl 
Hi SpellLocal #ae6d04 #eee8e8 039 254 undercurl undercurl 
Hi SpellCap   #7b8b04 #eee8e8 000 254 undercurl undercurl 
Hi SpellRare  #ce2c93 #eee8e8 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#6e605e guibg=s:#ae6d04 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d2c7c6"   
  let g:terminal_color_1  = "#849504"  
  let g:terminal_color_2  = "#a19391"  
  let g:terminal_color_3  = "#988886"  
  let g:terminal_color_4  = "#796967"  
  let g:terminal_color_5  = "#6e605e"  
  let g:terminal_color_6  = "#211d1c"  
  let g:terminal_color_7  = "#0d0807"  
  let g:terminal_color_8  = "#6a7703"  
  let g:terminal_color_9  = "#9f6404"  
  let g:terminal_color_10 = "#ce2c93"  
  let g:terminal_color_11 = "#f18c7e " 
  let g:terminal_color_12 = "#ae6d04"  
  let g:terminal_color_13 = "#7b8b04"  
  let g:terminal_color_14 = "#ce2c93"  
  let g:terminal_color_15 = "#d2c7c6 " 
endif 

