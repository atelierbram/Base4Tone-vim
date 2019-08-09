" colorscheme: Base4Tone_Classic_W by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_W_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_W_Light" 

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
Hi Debug        #8b5704 NONE 057 
Hi Directory    #a82457 NONE 030 
Hi Error        #e4dde0 #8b5704 253 
Hi ErrorMsg     #8b5704 #e4dde0 057 
Hi Exception    #8b5704 NONE 057 
Hi FoldColumn   #d34431 #d1c7cb 039 251 
Hi Folded       #94898d #d1c7cb 245 251 
Hi IncSearch    #661872 #eaa3f5 058 191 
Hi Macro        #8b5704 NONE 057 
Hi MatchParen   #e4dde0 #94898d 253 245 
Hi ModeMsg      #d22d6c NONE 036 
Hi MoreMsg      #d22d6c NONE 036 
Hi Question     #d5880b NONE 069 
Hi Search       #e4dde0 #d355e7 253 142 
Hi SpecialKey   #94898d NONE 245 
Hi TooLong      #8b5704 NONE 057 
Hi Underlined   #932d1f NONE 020 
Hi Ignore       #c7bdc1  NONE 250  
Hi Visual       NONE #d1c7cb NONE 251 
Hi VisualNOS    #8b5704 NONE 057 
Hi WarningMsg   #8b5704 NONE 057 
Hi WildMenu     #f8f6f9 #be31d3 015 106
Hi Menu         #f8f6f9 #be31d3 015 106
Hi Scrollbar    #f8f6f9 #be31d3 015 106
Hi Tooltip      #f8f6f9 #be31d3 015 106
Hi Title        #932d1f NONE 020 NONE NONE 
Hi Conceal      #d5880b #e4dde0 069 253 
Hi Cursor       #f9f6f7 #938994 015 245 
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
Hi Character    #8b5704 NONE 057 
Hi Comment      #b2a9ac  NONE 248  
Hi Conditional  #be31d3 NONE 106 
Hi Constant     #841f93 NONE 100 
Hi Define       #be31d3 NONE 106 
Hi Delimiter    #e76655 NONE 045 
Hi Float        #bd3a28 NONE 021 
Hi Function     #bd3a28 NONE 021 
Hi Identifier   #554e56 NONE 239 
Hi Include      #9f6404 NONE 000 
Hi Keyword      #be31d3 NONE 106 
Hi Label        #be31d3 NONE 106 
Hi Number       #190805 NONE 017 
Hi Operator     #363032 NONE 236 
Hi PreProc      #be31d3 NONE 106 
Hi Repeat       #be31d3 NONE 106 
Hi Special      #931f4c NONE 030 
Hi SpecialChar  #ae6d04 NONE 063 
Hi Statement    #76193d NONE 022 NONE NONE 
Hi StorageClass #7a251a NONE 019 
Hi String       #611532 NONE 024 
Hi Structure    #be31d3 NONE 106 
Hi Tag          #be31d3 NONE 106 
Hi Todo         #53145d #f5a3c2 058 049 
Hi Type         #841f93 NONE 100 NONE NONE NONE 
Hi Typedef      #be31d3 NONE 106 
Hi Noise        #b2a9ac NONE  248 

" C highlighting 
Hi cOperator  #d34431 NONE 039 
Hi cPreCondit #be31d3 NONE 106 

" C# highlighting 
Hi csClass                #be31d3 NONE 106 
Hi csAttribute            #be31d3 NONE 106 
Hi csModifier             #be31d3 NONE 106 
Hi csType                 #8b5704 NONE 057 
Hi csUnspecifiedStatement #9f6404 NONE 000 
Hi csContextualStatement  #be31d3 NONE 106 
Hi csNewDecleration       #8b5704 NONE 057 

" CSS highlighting 
Hi cssBraces     #bdb3b6  NONE 249  
Hi cssClassName  #554e56 NONE 239 
Hi cssColor      #d22d6c NONE 036 
Hi cssImportant  #b87305 NONE 063 

" Diff highlighting 
Hi DiffAdd     #d22d6c #c7bdc1 036 250 
Hi DiffChange  #94898d #c7bdc1 245 250 
Hi DiffDelete  #8b5704 #c7bdc1 057 250 
Hi DiffText    #9f6404 #c7bdc1 000 250 
Hi DiffAdded   #d22d6c #ede8ea 036 254 
Hi DiffFile    #8b5704 #ede8ea 057 254 
Hi DiffNewFile #d22d6c #ede8ea 036 254 
Hi DiffLine    #9f6404 #ede8ea 000 254 
Hi DiffRemoved #8b5704 #ede8ea 057 254 

" Git highlighting 
Hi gitCommitOverflow #8b5704 NONE 057 
Hi gitCommitSummary  #6b6165 NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #d22d6c #c7bdc1 036 250 
Hi GitGutterChange #9f6404 #c7bdc1 000 250 
Hi GitGutterDelete #8b5704 #c7bdc1 057 250 
Hi GitGutterChangeDelete #be31d3 #c7bdc1 106 250 

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
Hi jsOperator          #9f6404 NONE 000 
Hi jsStatement         #be31d3 NONE 106 
Hi jsReturn            #be31d3 NONE 106 
Hi jsThis              #8b5704 NONE 057 
Hi jsClassDefinition   #be31d3 NONE 106 
Hi jsFunction          #be31d3 NONE 106 
Hi jsFuncName          #9f6404 NONE 000 
Hi jsFuncCall          #9f6404 NONE 000 
Hi jsClassFuncName     #9f6404 NONE 000 
Hi jsClassMethodType   #be31d3 NONE 106 
Hi jsRegexpString      #d34431 NONE 039 
Hi jsGlobalObjects     #be31d3 NONE 106 
Hi jsGlobalNodeObjects #be31d3 NONE 106 
Hi jsExceptions        #be31d3 NONE 106 
Hi jsBuiltins          #be31d3 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #be31d3 NONE 106 
Hi mailQuoted2 #d22d6c NONE 036 
Hi mailQuoted3 #be31d3 NONE 106 
Hi mailQuoted4 #d34431 NONE 039 
Hi mailQuoted5 #9f6404 NONE 000 
Hi mailQuoted6 #be31d3 NONE 106 
Hi mailURL     #9f6404 NONE 000 
Hi mailEmail   #9f6404 NONE 000 

" Markdown highlighting 
Hi markdownCode             #d22d6c NONE 036 
Hi markdownError            #6b6165 #e4dde0 241 253 
Hi markdownCodeBlock        #d22d6c NONE 036 
Hi markdownHeadingDelimiter #bd3a28 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #9f6404 NONE 000 
Hi NERDTreeExecFile #6b6165 NONE 241 

" PHP highlighting 
Hi phpMemberSelector #6b6165 NONE 241 
Hi phpComparison     #6b6165 NONE 241 
Hi phpParent         #b2a9ac  NONE 248  
Hi phpVarSelector    #d34431 NONE 039 

" Python highlighting 
Hi pythonOperator #be31d3 NONE 106 
Hi pythonRepeat   #be31d3 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #9f6404 NONE 000 
Hi rubyConstant               #b52bca NONE 100 
Hi rubyInterpolation          #d22d6c NONE 036 
Hi rubyInterpolationDelimiter #d34431 NONE 039 
Hi rubyRegexp                 #d34431 NONE 039 
Hi rubySymbol                 #d22d6c NONE 036 
Hi rubyStringDelimiter        #d34431 NONE 039 

" SASS highlighting 
Hi sassidChar       #8b5704 NONE 057 
Hi sassClassChar    #bd3a28 NONE 021 
Hi sassInclude      #be31d3 NONE 106 
Hi sassMixing       #be31d3 NONE 106 
Hi sassMixinName    #9f6404 NONE 000 
Hi scssAttribute    #b2a9ac  NONE 248  
Hi scssDefinition   #b2a9ac  NONE 248  
Hi scssFunctionName #bd2861 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #d22d6c #c7bdc1 036 250 
Hi SignifySignChange #9f6404 #c7bdc1 000 250 
Hi SignifySignDelete #8b5704 #c7bdc1 057 250 

" Spelling highlighting 
Hi SpellBad   #8b5704 #ede8ea 057 254 undercurl undercurl 
Hi SpellLocal #d34431 #ede8ea 039 254 undercurl undercurl 
Hi SpellCap   #9f6404 #ede8ea 000 254 undercurl undercurl 
Hi SpellRare  #be31d3 #ede8ea 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#6b6165 guibg=s:#d34431 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d1c7cb"   
  let g:terminal_color_1  = "#ae6d04"  
  let g:terminal_color_2  = "#9e9498"  
  let g:terminal_color_3  = "#94898d"  
  let g:terminal_color_4  = "#766b6f"  
  let g:terminal_color_5  = "#6b6165"  
  let g:terminal_color_6  = "#201d1e"  
  let g:terminal_color_7  = "#0d080a"  
  let g:terminal_color_8  = "#8b5704"  
  let g:terminal_color_9  = "#bd3a28"  
  let g:terminal_color_10 = "#be31d3"  
  let g:terminal_color_11 = "#f17eaa " 
  let g:terminal_color_12 = "#d34431"  
  let g:terminal_color_13 = "#9f6404"  
  let g:terminal_color_14 = "#be31d3"  
  let g:terminal_color_15 = "#d1c7cb " 
endif 

