" colorscheme: Base4Tone_Modern_N by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Modern_N_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Modern_N_Light" 

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
Hi Debug        #931f4c NONE 057 
Hi Directory    #0374b5 NONE 030 
Hi Error        #dce2e5 #931f4c 253 
Hi ErrorMsg     #931f4c #dce2e5 057 
Hi Exception    #931f4c NONE 057 
Hi FoldColumn   #5468e8 #c4ced4 039 251 
Hi Folded       #7e93a0 #c4ced4 245 251 
Hi IncSearch    #5a4e02 #ebd547 058 191 
Hi Macro        #931f4c NONE 057 
Hi MatchParen   #0b88d0 #c9c7bb 036 250 
Hi ModeMsg      #0580c7 NONE 036 
Hi MoreMsg      #0580c7 NONE 036 
Hi Question     #e7558d NONE 069 
Hi Search       #dce2e5 #b8a10a 253 142 
Hi SpecialKey   #7e93a0 NONE 245 
Hi TooLong      #931f4c NONE 057 
Hi Underlined   #364ddd NONE 020 
Hi Ignore       #b9c4cb  NONE 250  
Hi Visual       NONE #c4ced4 NONE 251 
Hi VisualNOS    #931f4c NONE 057 
Hi WarningMsg   #931f4c NONE 057 
Hi WildMenu     #f9f8f6 #958204 015 106
Hi Menu         #f9f8f6 #958204 015 106
Hi Scrollbar    #f9f8f6 #958204 015 106
Hi Tooltip      #f9f8f6 #958204 015 106
Hi Title        #364ddd NONE 020 NONE NONE 
Hi Conceal      #e7558d #dce2e5 069 253 
Hi Cursor       #f6f8f9 #b5b3a6 015 248 
Hi NonText      #7e93a0 NONE 245 
Hi Normal       #011623 #e8ebee 000 254 
Hi LineNr       #adbac2 #dce2e5 249 253  
Hi SignColumn   #c4ced4 #8a9da8 251 246 
Hi StatusLine   #a1b1ba #dce2e5 248 253 NONE NONE 
Hi StatusLineNC #8a9da8 #d0d8dc 246 252 NONE NONE 
Hi VertSplit    #e8ebee #e8ebee 254 254 
Hi CursorColumn NONE #344046 NONE 237 NONE NONE 
Hi CursorLine   NONE #dce2e5 NONE 253 NONE NONE 
Hi CursorLineNr #95a7b1 #d0d8dc 247 252 
Hi PMenu        #5f7581 #dce2e5 242 253 
Hi PMenuSel     #b9c4cb #dce2e5 250 253 
Hi TabLine      #7e93a0 #dce2e5 245 253 
Hi TabLineFill  #7e93a0 #dce2e5 245 253 
Hi TabLineSel   #0580c7 #dce2e5 036 253 

" Standard syntax highlighting 
Hi Boolean      #4b60e7 NONE 021 
Hi Character    #931f4c NONE 057 
Hi Comment      #a1b1ba  NONE 248  
Hi Conditional  #958204 NONE 106 
Hi Constant     #776803 NONE 100 
Hi Define       #958204 NONE 106 
Hi Delimiter    #7989f1 NONE 045 
Hi Float        #4b60e7 NONE 021 
Hi Function     #4b60e7 NONE 021 
Hi Identifier   #59574a NONE 239 
Hi Include      #bd2861 NONE 000 
Hi Keyword      #958204 NONE 106 
Hi Label        #958204 NONE 106 
Hi Number       #090f34 NONE 017 
Hi Operator     #2b353b NONE 236 
Hi PreProc      #958204 NONE 106 
Hi Repeat       #958204 NONE 106 
Hi Special      #036aa6 NONE 030 
Hi SpecialChar  #d22d6c NONE 063 
Hi Statement    #02507e NONE 022 NONE NONE 
Hi StorageClass #233bd1 NONE 019 
Hi String       #024369 NONE 024 
Hi Structure    #958204 NONE 106 
Hi Tag          #958204 NONE 106 
Hi Todo         #4b4102 #99d6fa 058 049 
Hi Type         #776803 NONE 100 NONE NONE NONE 
Hi Typedef      #958204 NONE 106 
Hi Noise        #a1b1ba NONE  248 

" C highlighting 
Hi cOperator  #5468e8 NONE 039 
Hi cPreCondit #958204 NONE 106 

" C# highlighting 
Hi csClass                #958204 NONE 106 
Hi csAttribute            #958204 NONE 106 
Hi csModifier             #958204 NONE 106 
Hi csType                 #931f4c NONE 057 
Hi csUnspecifiedStatement #bd2861 NONE 000 
Hi csContextualStatement  #958204 NONE 106 
Hi csNewDecleration       #931f4c NONE 057 

" CSS highlighting 
Hi cssBraces     #adbac2  NONE 249  
Hi cssClassName  #59574a NONE 239 
Hi cssColor      #0580c7 NONE 036 
Hi cssImportant  #d53975 NONE 063 

" Diff highlighting 
Hi DiffAdd     #0580c7 #b9c4cb 036 250 
Hi DiffChange  #7e93a0 #b9c4cb 245 250 
Hi DiffDelete  #931f4c #b9c4cb 057 250 
Hi DiffText    #bd2861 #b9c4cb 000 250 
Hi DiffAdded   #0580c7 #e8ebee 036 254 
Hi DiffFile    #931f4c #e8ebee 057 254 
Hi DiffNewFile #0580c7 #e8ebee 036 254 
Hi DiffLine    #bd2861 #e8ebee 000 254 
Hi DiffRemoved #931f4c #e8ebee 057 254 

" Git highlighting 
Hi gitCommitOverflow #931f4c NONE 057 
Hi gitCommitSummary  #576a75 NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #0580c7 #b9c4cb 036 250 
Hi GitGutterChange #bd2861 #b9c4cb 000 250 
Hi GitGutterDelete #931f4c #b9c4cb 057 250 
Hi GitGutterChangeDelete #958204 #b9c4cb 106 250 

" XML highlighting 
Hi xmlTag     #a1b1ba NONE 248  
Hi xmlEndTag  #a1b1ba NONE 248  
Hi xmlTagName #687f8d NONE 243  

" HTML highlighting 
Hi htmlBold      #364ddd NONE 020 
Hi htmlItalic    #1f33b7 NONE 018 
Hi htmlTag       #a1b1ba  NONE 248  
Hi htmlEndTag    #a1b1ba  NONE 248  
Hi htmlStatement #0374b5 NONE 030 

" JavaScript highlighting 
Hi javaScript          #576a75 NONE 241 
Hi javaScriptBraces    #a1b1ba  NONE 248  
Hi javaScriptNumber    #4b60e7 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #bd2861 NONE 000 
Hi jsStatement         #958204 NONE 106 
Hi jsReturn            #958204 NONE 106 
Hi jsThis              #931f4c NONE 057 
Hi jsClassDefinition   #958204 NONE 106 
Hi jsFunction          #958204 NONE 106 
Hi jsFuncName          #bd2861 NONE 000 
Hi jsFuncCall          #bd2861 NONE 000 
Hi jsClassFuncName     #bd2861 NONE 000 
Hi jsClassMethodType   #958204 NONE 106 
Hi jsRegexpString      #5468e8 NONE 039 
Hi jsGlobalObjects     #958204 NONE 106 
Hi jsGlobalNodeObjects #958204 NONE 106 
Hi jsExceptions        #958204 NONE 106 
Hi jsBuiltins          #958204 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #958204 NONE 106 
Hi mailQuoted2 #0580c7 NONE 036 
Hi mailQuoted3 #958204 NONE 106 
Hi mailQuoted4 #5468e8 NONE 039 
Hi mailQuoted5 #bd2861 NONE 000 
Hi mailQuoted6 #958204 NONE 106 
Hi mailURL     #bd2861 NONE 000 
Hi mailEmail   #bd2861 NONE 000 

" Markdown highlighting 
Hi markdownCode             #0580c7 NONE 036 
Hi markdownError            #576a75 #dce2e5 241 253 
Hi markdownCodeBlock        #0580c7 NONE 036 
Hi markdownHeadingDelimiter #4b60e7 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #bd2861 NONE 000 
Hi NERDTreeExecFile #576a75 NONE 241 

" PHP highlighting 
Hi phpMemberSelector #576a75 NONE 241 
Hi phpComparison     #576a75 NONE 241 
Hi phpParent         #a1b1ba  NONE 248  
Hi phpVarSelector    #5468e8 NONE 039 

" Python highlighting 
Hi pythonOperator #958204 NONE 106 
Hi pythonRepeat   #958204 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #bd2861 NONE 000 
Hi rubyConstant               #8b7904 NONE 100 
Hi rubyInterpolation          #0580c7 NONE 036 
Hi rubyInterpolationDelimiter #5468e8 NONE 039 
Hi rubyRegexp                 #5468e8 NONE 039 
Hi rubySymbol                 #0580c7 NONE 036 
Hi rubyStringDelimiter        #5468e8 NONE 039 

" SASS highlighting 
Hi sassidChar       #931f4c NONE 057 
Hi sassClassChar    #4b60e7 NONE 021 
Hi sassInclude      #958204 NONE 106 
Hi sassMixing       #958204 NONE 106 
Hi sassMixinName    #bd2861 NONE 000 
Hi scssAttribute    #a1b1ba  NONE 248  
Hi scssDefinition   #a1b1ba  NONE 248  
Hi scssFunctionName #037abf NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #0580c7 #b9c4cb 036 250 
Hi SignifySignChange #bd2861 #b9c4cb 000 250 
Hi SignifySignDelete #931f4c #b9c4cb 057 250 

" Spelling highlighting 
Hi SpellBad   #931f4c #e8ebee 057 254 undercurl undercurl 
Hi SpellLocal #5468e8 #e8ebee 039 254 undercurl undercurl 
Hi SpellCap   #bd2861 #e8ebee 000 254 undercurl undercurl 
Hi SpellRare  #958204 #e8ebee 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#576a75 guibg=s:#5468e8 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#c4ced4"   
  let g:terminal_color_1  = "#d22d6c"  
  let g:terminal_color_2  = "#8a9da8"  
  let g:terminal_color_3  = "#7e93a0"  
  let g:terminal_color_4  = "#5f7581"  
  let g:terminal_color_5  = "#576a75"  
  let g:terminal_color_6  = "#1a2023"  
  let g:terminal_color_7  = "#070b0d"  
  let g:terminal_color_8  = "#931f4c"  
  let g:terminal_color_9  = "#4b60e7"  
  let g:terminal_color_10 = "#958204"  
  let g:terminal_color_11 = "#64c1f7 " 
  let g:terminal_color_12 = "#5468e8"  
  let g:terminal_color_13 = "#bd2861"  
  let g:terminal_color_14 = "#958204"  
  let g:terminal_color_15 = "#c4ced4 " 
endif 

