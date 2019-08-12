" colorscheme: Base4Tone_Modern_W by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Modern_W_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Modern_W_Light" 

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
Hi Debug        #18760a NONE 057 
Hi Directory    #a82457 NONE 030 
Hi Error        #e4dde0 #18760a 253 
Hi ErrorMsg     #18760a #e4dde0 057 
Hi Exception    #18760a NONE 057 
Hi FoldColumn   #d34431 #d1c7cb 039 251 
Hi Folded       #94898d #d1c7cb 245 251 
Hi IncSearch    #02545e #7ddce8 058 191 
Hi Macro        #18760a NONE 057 
Hi MatchParen   #e4dde0 #94898d 253 245 
Hi ModeMsg      #d22d6c NONE 036 
Hi MoreMsg      #d22d6c NONE 036 
Hi Question     #33b21f NONE 069 
Hi Search       #e4dde0 #22acbf 253 142 
Hi SpecialKey   #94898d NONE 245 
Hi TooLong      #18760a NONE 057 
Hi Underlined   #932d1f NONE 020 
Hi Ignore       #c7bdc1  NONE 250  
Hi Visual       NONE #d1c7cb NONE 251 
Hi VisualNOS    #18760a NONE 057 
Hi WarningMsg   #18760a NONE 057 
Hi WildMenu     #f6f9f9 #048495 015 106
Hi Menu         #f6f9f9 #048495 015 106
Hi Scrollbar    #f6f9f9 #048495 015 106
Hi Tooltip      #f6f9f9 #048495 015 106
Hi Title        #932d1f NONE 020 NONE NONE 
Hi Conceal      #33b21f #e4dde0 069 253 
Hi Cursor       #f9f6f7 #809a9d 015 245 
Hi NonText      #94898d NONE 245 
Hi Normal       #15040b #e4dde0 000 253 
Hi LineNr       #bdb3b6 #dad2d5  249 252  
Hi SignColumn   #d1c7cb #9e9498 251 246 
Hi StatusLine   #b2a9ac #ede8ea 248 254 NONE NONE 
Hi StatusLineNC #9e9498 #dad2d5 246 252 NONE NONE 
Hi VertSplit    #e4dde0 #e4dde0 253 253 
Hi CursorColumn NONE #403a3c NONE 237 NONE NONE 
Hi CursorLine   NONE #dad2d5 NONE 252 NONE NONE 
Hi CursorLineNr #94898d #c7bdc1 245 250 
Hi PMenu        #766b6f #c7bdc1 242 250 
Hi PMenuSel     #c7bdc1 #766b6f 250 242 
Hi TabLine      #94898d #c7bdc1 245 250 
Hi TabLineFill  #94898d #c7bdc1 245 250 
Hi TabLineSel   #d22d6c #c7bdc1 036 250 

" Standard syntax highlighting 
Hi Boolean      #bd3a28 NONE 021 
Hi Character    #18760a NONE 057 
Hi Comment      #b2a9ac  NONE 248  
Hi Conditional  #048495 NONE 106 
Hi Constant     #036e7c NONE 100 
Hi Define       #048495 NONE 106 
Hi Delimiter    #e76655 NONE 045 
Hi Float        #bd3a28 NONE 021 
Hi Function     #bd3a28 NONE 021 
Hi Identifier   #475a5c NONE 239 
Hi Include      #1c890b NONE 000 
Hi Keyword      #048495 NONE 106 
Hi Label        #048495 NONE 106 
Hi Number       #190805 NONE 017 
Hi Operator     #363032 NONE 236 
Hi PreProc      #048495 NONE 106 
Hi Repeat       #048495 NONE 106 
Hi Special      #931f4c NONE 030 
Hi SpecialChar  #1f970c NONE 063 
Hi Statement    #76193d NONE 022 NONE NONE 
Hi StorageClass #7a251a NONE 019 
Hi String       #611532 NONE 024 
Hi Structure    #048495 NONE 106 
Hi Tag          #048495 NONE 106 
Hi Todo         #024750 #f5a3c2 058 049 
Hi Type         #036e7c NONE 100 NONE NONE NONE 
Hi Typedef      #048495 NONE 106 
Hi Noise        #b2a9ac NONE  248 

" C highlighting 
Hi cOperator  #d34431 NONE 039 
Hi cPreCondit #048495 NONE 106 

" C# highlighting 
Hi csClass                #048495 NONE 106 
Hi csAttribute            #048495 NONE 106 
Hi csModifier             #048495 NONE 106 
Hi csType                 #18760a NONE 057 
Hi csUnspecifiedStatement #1c890b NONE 000 
Hi csContextualStatement  #048495 NONE 106 
Hi csNewDecleration       #18760a NONE 057 

" CSS highlighting 
Hi cssBraces     #bdb3b6  NONE 249  
Hi cssClassName  #475a5c NONE 239 
Hi cssColor      #d22d6c NONE 036 
Hi cssImportant  #21a00d NONE 063 

" Diff highlighting 
Hi DiffAdd     #d22d6c #c7bdc1 036 250 
Hi DiffChange  #94898d #c7bdc1 245 250 
Hi DiffDelete  #18760a #c7bdc1 057 250 
Hi DiffText    #1c890b #c7bdc1 000 250 
Hi DiffAdded   #d22d6c #ede8ea 036 254 
Hi DiffFile    #18760a #ede8ea 057 254 
Hi DiffNewFile #d22d6c #ede8ea 036 254 
Hi DiffLine    #1c890b #ede8ea 000 254 
Hi DiffRemoved #18760a #ede8ea 057 254 

" Git highlighting 
Hi gitCommitOverflow #18760a NONE 057 
Hi gitCommitSummary  #6b6165 NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #d22d6c #c7bdc1 036 250 
Hi GitGutterChange #1c890b #c7bdc1 000 250 
Hi GitGutterDelete #18760a #c7bdc1 057 250 
Hi GitGutterChangeDelete #048495 #c7bdc1 106 250 

" XML highlighting 
Hi xmlTag     #b2a9ac NONE 248  
Hi xmlEndTag  #b2a9ac NONE 248  
Hi xmlTagName #817479 NONE 243  

" HTML highlighting 
Hi htmlBold      #932d1f NONE 020 
Hi htmlItalic    #651f15 NONE 018 
Hi htmlTag       #b2a9ac  NONE 248  
Hi htmlEndTag    #b2a9ac  NONE 248  
Hi htmlStatement #a82457 NONE 030 

" JavaScript highlighting 
Hi javaScript          #6b6165 NONE 241 
Hi javaScriptBraces    #b2a9ac  NONE 248  
Hi javaScriptNumber    #bd3a28 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #1c890b NONE 000 
Hi jsStatement         #048495 NONE 106 
Hi jsReturn            #048495 NONE 106 
Hi jsThis              #18760a NONE 057 
Hi jsClassDefinition   #048495 NONE 106 
Hi jsFunction          #048495 NONE 106 
Hi jsFuncName          #1c890b NONE 000 
Hi jsFuncCall          #1c890b NONE 000 
Hi jsClassFuncName     #1c890b NONE 000 
Hi jsClassMethodType   #048495 NONE 106 
Hi jsRegexpString      #d34431 NONE 039 
Hi jsGlobalObjects     #048495 NONE 106 
Hi jsGlobalNodeObjects #048495 NONE 106 
Hi jsExceptions        #048495 NONE 106 
Hi jsBuiltins          #048495 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #048495 NONE 106 
Hi mailQuoted2 #d22d6c NONE 036 
Hi mailQuoted3 #048495 NONE 106 
Hi mailQuoted4 #d34431 NONE 039 
Hi mailQuoted5 #1c890b NONE 000 
Hi mailQuoted6 #048495 NONE 106 
Hi mailURL     #1c890b NONE 000 
Hi mailEmail   #1c890b NONE 000 

" Markdown highlighting 
Hi markdownCode             #d22d6c NONE 036 
Hi markdownError            #6b6165 #e4dde0 241 253 
Hi markdownCodeBlock        #d22d6c NONE 036 
Hi markdownHeadingDelimiter #bd3a28 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #1c890b NONE 000 
Hi NERDTreeExecFile #6b6165 NONE 241 

" PHP highlighting 
Hi phpMemberSelector #6b6165 NONE 241 
Hi phpComparison     #6b6165 NONE 241 
Hi phpParent         #b2a9ac  NONE 248  
Hi phpVarSelector    #d34431 NONE 039 

" Python highlighting 
Hi pythonOperator #048495 NONE 106 
Hi pythonRepeat   #048495 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #1c890b NONE 000 
Hi rubyConstant               #047b8b NONE 100 
Hi rubyInterpolation          #d22d6c NONE 036 
Hi rubyInterpolationDelimiter #d34431 NONE 039 
Hi rubyRegexp                 #d34431 NONE 039 
Hi rubySymbol                 #d22d6c NONE 036 
Hi rubyStringDelimiter        #d34431 NONE 039 

" SASS highlighting 
Hi sassidChar       #18760a NONE 057 
Hi sassClassChar    #bd3a28 NONE 021 
Hi sassInclude      #048495 NONE 106 
Hi sassMixing       #048495 NONE 106 
Hi sassMixinName    #1c890b NONE 000 
Hi scssAttribute    #b2a9ac  NONE 248  
Hi scssDefinition   #b2a9ac  NONE 248  
Hi scssFunctionName #bd2861 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #d22d6c #c7bdc1 036 250 
Hi SignifySignChange #1c890b #c7bdc1 000 250 
Hi SignifySignDelete #18760a #c7bdc1 057 250 

" Spelling highlighting 
Hi SpellBad   #18760a #ede8ea 057 254 undercurl undercurl 
Hi SpellLocal #d34431 #ede8ea 039 254 undercurl undercurl 
Hi SpellCap   #1c890b #ede8ea 000 254 undercurl undercurl 
Hi SpellRare  #048495 #ede8ea 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#6b6165 guibg=s:#d34431 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d1c7cb"   
  let g:terminal_color_1  = "#1f970c"  
  let g:terminal_color_2  = "#9e9498"  
  let g:terminal_color_3  = "#94898d"  
  let g:terminal_color_4  = "#766b6f"  
  let g:terminal_color_5  = "#6b6165"  
  let g:terminal_color_6  = "#201d1e"  
  let g:terminal_color_7  = "#0d080a"  
  let g:terminal_color_8  = "#18760a"  
  let g:terminal_color_9  = "#bd3a28"  
  let g:terminal_color_10 = "#048495"  
  let g:terminal_color_11 = "#f17eaa " 
  let g:terminal_color_12 = "#d34431"  
  let g:terminal_color_13 = "#1c890b"  
  let g:terminal_color_14 = "#048495"  
  let g:terminal_color_15 = "#d1c7cb " 
endif 

