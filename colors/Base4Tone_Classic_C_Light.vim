" colorscheme: Base4Tone_Classic_C by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_C_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_C_Light" 

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
Hi Debug        #037248 NONE 057 
Hi Directory    #955d04 NONE 030 
Hi Error        #e5e1dc #037248 253 
Hi ErrorMsg     #037248 #e5e1dc 057 
Hi Exception    #037248 NONE 057 
Hi FoldColumn   #849504 #d2cdc6 039 251 
Hi Folded       #9a9184 #d2cdc6 245 251 
Hi IncSearch    #7a251a #f5ada3 058 191 
Hi Macro        #037248 NONE 057 
Hi MatchParen   #e5e1dc #9a9184 253 245 
Hi ModeMsg      #ae6d04 NONE 036 
Hi MoreMsg      #ae6d04 NONE 036 
Hi Question     #09b372 NONE 069 
Hi Search       #e5e1dc #e76655 253 142 
Hi SpecialKey   #9a9184 NONE 245 
Hi TooLong      #037248 NONE 057 
Hi Underlined   #6a7703 NONE 020 
Hi Ignore       #c9c3bb  NONE 250  
Hi Visual       NONE #d2cdc6 NONE 251 
Hi VisualNOS    #037248 NONE 057 
Hi WarningMsg   #037248 NONE 057 
Hi WildMenu     #f9f6f6 #d34431 015 106
Hi Menu         #f9f6f6 #d34431 015 106
Hi Scrollbar    #f9f6f6 #d34431 015 106
Hi Tooltip      #f9f6f6 #d34431 015 106
Hi Title        #6a7703 NONE 020 NONE NONE 
Hi Conceal      #09b372 #e5e1dc 069 253 
Hi Cursor       #f9f8f6 #988886 015 245 
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
Hi Boolean      #7b8b04 NONE 021 
Hi Character    #037248 NONE 057 
Hi Comment      #b6afa5  NONE 248  
Hi Conditional  #d34431 NONE 106 
Hi Constant     #932d1f NONE 100 
Hi Define       #d34431 NONE 106 
Hi Delimiter    #a4b80a NONE 045 
Hi Float        #7b8b04 NONE 021 
Hi Function     #7b8b04 NONE 021 
Hi Identifier   #584d4b NONE 239 
Hi Include      #038654 NONE 000 
Hi Keyword      #d34431 NONE 106 
Hi Label        #d34431 NONE 106 
Hi Number       #161901 NONE 017 
Hi Operator     #38342e NONE 236 
Hi PreProc      #d34431 NONE 106 
Hi Repeat       #d34431 NONE 106 
Hi Special      #8b5704 NONE 030 
Hi SpecialChar  #04905a NONE 063 
Hi Statement    #6d4503 NONE 022 NONE NONE 
Hi StorageClass #4f5a02 NONE 019 
Hi String       #5a3802 NONE 024 
Hi Structure    #d34431 NONE 106 
Hi Tag          #d34431 NONE 106 
Hi Todo         #651f15 #eeb863 058 049 
Hi Type         #932d1f NONE 100 NONE NONE NONE 
Hi Typedef      #d34431 NONE 106 
Hi Noise        #b6afa5 NONE  248 

" C highlighting 
Hi cOperator  #849504 NONE 039 
Hi cPreCondit #d34431 NONE 106 

" C# highlighting 
Hi csClass                #d34431 NONE 106 
Hi csAttribute            #d34431 NONE 106 
Hi csModifier             #d34431 NONE 106 
Hi csType                 #037248 NONE 057 
Hi csUnspecifiedStatement #038654 NONE 000 
Hi csContextualStatement  #d34431 NONE 106 
Hi csNewDecleration       #037248 NONE 057 

" CSS highlighting 
Hi cssBraces     #bfb9b0  NONE 249  
Hi cssClassName  #584d4b NONE 239 
Hi cssColor      #ae6d04 NONE 036 
Hi cssImportant  #049a61 NONE 063 

" Diff highlighting 
Hi DiffAdd     #ae6d04 #c9c3bb 036 250 
Hi DiffChange  #9a9184 #c9c3bb 245 250 
Hi DiffDelete  #037248 #c9c3bb 057 250 
Hi DiffText    #038654 #c9c3bb 000 250 
Hi DiffAdded   #ae6d04 #eeebe8 036 254 
Hi DiffFile    #037248 #eeebe8 057 254 
Hi DiffNewFile #ae6d04 #eeebe8 036 254 
Hi DiffLine    #038654 #eeebe8 000 254 
Hi DiffRemoved #037248 #eeebe8 057 254 

" Git highlighting 
Hi gitCommitOverflow #037248 NONE 057 
Hi gitCommitSummary  #70685c NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #ae6d04 #c9c3bb 036 250 
Hi GitGutterChange #038654 #c9c3bb 000 250 
Hi GitGutterDelete #037248 #c9c3bb 057 250 
Hi GitGutterChangeDelete #d34431 #c9c3bb 106 250 

" XML highlighting 
Hi xmlTag     #b6afa5 NONE 248  
Hi xmlEndTag  #b6afa5 NONE 248  
Hi xmlTagName #877d6e NONE 243  

" HTML highlighting 
Hi htmlBold      #6a7703 NONE 020 
Hi htmlItalic    #424b02 NONE 018 
Hi htmlTag       #b6afa5  NONE 248  
Hi htmlEndTag    #b6afa5  NONE 248  
Hi htmlStatement #955d04 NONE 030 

" JavaScript highlighting 
Hi javaScript          #70685c NONE 241 
Hi javaScriptBraces    #b6afa5  NONE 248  
Hi javaScriptNumber    #7b8b04 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #038654 NONE 000 
Hi jsStatement         #d34431 NONE 106 
Hi jsReturn            #d34431 NONE 106 
Hi jsThis              #037248 NONE 057 
Hi jsClassDefinition   #d34431 NONE 106 
Hi jsFunction          #d34431 NONE 106 
Hi jsFuncName          #038654 NONE 000 
Hi jsFuncCall          #038654 NONE 000 
Hi jsClassFuncName     #038654 NONE 000 
Hi jsClassMethodType   #d34431 NONE 106 
Hi jsRegexpString      #849504 NONE 039 
Hi jsGlobalObjects     #d34431 NONE 106 
Hi jsGlobalNodeObjects #d34431 NONE 106 
Hi jsExceptions        #d34431 NONE 106 
Hi jsBuiltins          #d34431 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #d34431 NONE 106 
Hi mailQuoted2 #ae6d04 NONE 036 
Hi mailQuoted3 #d34431 NONE 106 
Hi mailQuoted4 #849504 NONE 039 
Hi mailQuoted5 #038654 NONE 000 
Hi mailQuoted6 #d34431 NONE 106 
Hi mailURL     #038654 NONE 000 
Hi mailEmail   #038654 NONE 000 

" Markdown highlighting 
Hi markdownCode             #ae6d04 NONE 036 
Hi markdownError            #70685c #e5e1dc 241 253 
Hi markdownCodeBlock        #ae6d04 NONE 036 
Hi markdownHeadingDelimiter #7b8b04 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #038654 NONE 000 
Hi NERDTreeExecFile #70685c NONE 241 

" PHP highlighting 
Hi phpMemberSelector #70685c NONE 241 
Hi phpComparison     #70685c NONE 241 
Hi phpParent         #b6afa5  NONE 248  
Hi phpVarSelector    #849504 NONE 039 

" Python highlighting 
Hi pythonOperator #d34431 NONE 106 
Hi pythonRepeat   #d34431 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #038654 NONE 000 
Hi rubyConstant               #bd3a28 NONE 100 
Hi rubyInterpolation          #ae6d04 NONE 036 
Hi rubyInterpolationDelimiter #849504 NONE 039 
Hi rubyRegexp                 #849504 NONE 039 
Hi rubySymbol                 #ae6d04 NONE 036 
Hi rubyStringDelimiter        #849504 NONE 039 

" SASS highlighting 
Hi sassidChar       #037248 NONE 057 
Hi sassClassChar    #7b8b04 NONE 021 
Hi sassInclude      #d34431 NONE 106 
Hi sassMixing       #d34431 NONE 106 
Hi sassMixinName    #038654 NONE 000 
Hi scssAttribute    #b6afa5  NONE 248  
Hi scssDefinition   #b6afa5  NONE 248  
Hi scssFunctionName #9f6404 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #ae6d04 #c9c3bb 036 250 
Hi SignifySignChange #038654 #c9c3bb 000 250 
Hi SignifySignDelete #037248 #c9c3bb 057 250 

" Spelling highlighting 
Hi SpellBad   #037248 #eeebe8 057 254 undercurl undercurl 
Hi SpellLocal #849504 #eeebe8 039 254 undercurl undercurl 
Hi SpellCap   #038654 #eeebe8 000 254 undercurl undercurl 
Hi SpellRare  #d34431 #eeebe8 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#70685c guibg=s:#849504 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d2cdc6"   
  let g:terminal_color_1  = "#04905a"  
  let g:terminal_color_2  = "#a39b8f"  
  let g:terminal_color_3  = "#9a9184"  
  let g:terminal_color_4  = "#7b7365"  
  let g:terminal_color_5  = "#70685c"  
  let g:terminal_color_6  = "#221f1c"  
  let g:terminal_color_7  = "#0d0b07"  
  let g:terminal_color_8  = "#037248"  
  let g:terminal_color_9  = "#7b8b04"  
  let g:terminal_color_10 = "#d34431"  
  let g:terminal_color_11 = "#e8a02c " 
  let g:terminal_color_12 = "#849504"  
  let g:terminal_color_13 = "#038654"  
  let g:terminal_color_14 = "#d34431"  
  let g:terminal_color_15 = "#d2cdc6 " 
endif 

