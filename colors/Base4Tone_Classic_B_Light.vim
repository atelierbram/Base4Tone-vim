" colorscheme: Base4Tone_Classic_B by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_B_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_B_Light" 

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
Hi Debug        #4d7703 NONE 057 
Hi Directory    #a05022 NONE 030 
Hi Error        #e5dfdc #4d7703 253 
Hi ErrorMsg     #4d7703 #e5dfdc 057 
Hi Exception    #4d7703 NONE 057 
Hi FoldColumn   #958204 #d2cac6 039 251 
Hi Folded       #998c85 #d2cac6 245 251 
Hi IncSearch    #7a251a #f5ada3 058 191 
Hi Macro        #4d7703 NONE 057 
Hi MatchParen   #ce672c #c9bdbb 036 250 
Hi ModeMsg      #c26129 NONE 036 
Hi MoreMsg      #c26129 NONE 036 
Hi Question     #78b80a NONE 069 
Hi Search       #e5dfdc #e76655 253 142 
Hi SpecialKey   #998c85 NONE 245 
Hi TooLong      #4d7703 NONE 057 
Hi Underlined   #776803 NONE 020 
Hi Ignore       #c9c0bb  NONE 250  
Hi Visual       NONE #d2cac6 NONE 251 
Hi VisualNOS    #4d7703 NONE 057 
Hi WarningMsg   #4d7703 NONE 057 
Hi WildMenu     #f9f6f6 #d34431 015 106
Hi Menu         #f9f6f6 #d34431 015 106
Hi Scrollbar    #f9f6f6 #d34431 015 106
Hi Tooltip      #f9f6f6 #d34431 015 106
Hi Title        #776803 NONE 020 NONE NONE 
Hi Conceal      #78b80a #e5dfdc 069 253 
Hi Cursor       #f9f7f6 #b5a8a6 015 248 
Hi NonText      #998c85 NONE 245 
Hi Normal       #190d05 #eeeae8 000 254 
Hi LineNr       #bfb6b0 #e5dfdc 249 253  
Hi SignColumn   #d2cac6 #a29790 251 246 
Hi StatusLine   #b5aba6 #e5dfdc 248 253 NONE NONE 
Hi StatusLineNC #a29790 #dcd5d1 246 252 NONE NONE 
Hi VertSplit    #eeeae8 #eeeae8 254 254 
Hi CursorColumn NONE #433c38 NONE 237 NONE NONE 
Hi CursorLine   NONE #e5dfdc NONE 253 NONE NONE 
Hi CursorLineNr #aba19b #dcd5d1 247 252 
Hi PMenu        #7a6e66 #e5dfdc 242 253 
Hi PMenuSel     #c9c0bb #e5dfdc 250 253 
Hi TabLine      #998c85 #e5dfdc 245 253 
Hi TabLineFill  #998c85 #e5dfdc 245 253 
Hi TabLineSel   #c26129 #e5dfdc 036 253 

" Standard syntax highlighting 
Hi Boolean      #8b7904 NONE 021 
Hi Character    #4d7703 NONE 057 
Hi Comment      #b5aba6  NONE 248  
Hi Conditional  #d34431 NONE 106 
Hi Constant     #932d1f NONE 100 
Hi Define       #d34431 NONE 106 
Hi Delimiter    #b8a10a NONE 045 
Hi Float        #8b7904 NONE 021 
Hi Function     #8b7904 NONE 021 
Hi Identifier   #584d4b NONE 239 
Hi Include      #598b04 NONE 000 
Hi Keyword      #d34431 NONE 106 
Hi Label        #d34431 NONE 106 
Hi Number       #191601 NONE 017 
Hi Operator     #38322e NONE 236 
Hi PreProc      #d34431 NONE 106 
Hi Repeat       #d34431 NONE 106 
Hi Special      #8f481e NONE 030 
Hi SpecialChar  #609504 NONE 063 
Hi Statement    #723918 NONE 022 NONE NONE 
Hi StorageClass #5a4e02 NONE 019 
Hi String       #5d2e14 NONE 024 
Hi Structure    #d34431 NONE 106 
Hi Tag          #d34431 NONE 106 
Hi Todo         #651f15 #f2b28c 058 049 
Hi Type         #932d1f NONE 100 NONE NONE NONE 
Hi Typedef      #d34431 NONE 106 
Hi Noise        #b5aba6 NONE  248 

" C highlighting 
Hi cOperator  #958204 NONE 039 
Hi cPreCondit #d34431 NONE 106 

" C# highlighting 
Hi csClass                #d34431 NONE 106 
Hi csAttribute            #d34431 NONE 106 
Hi csModifier             #d34431 NONE 106 
Hi csType                 #4d7703 NONE 057 
Hi csUnspecifiedStatement #598b04 NONE 000 
Hi csContextualStatement  #d34431 NONE 106 
Hi csNewDecleration       #4d7703 NONE 057 

" CSS highlighting 
Hi cssBraces     #bfb6b0  NONE 249  
Hi cssClassName  #584d4b NONE 239 
Hi cssColor      #c26129 NONE 036 
Hi cssImportant  #669f04 NONE 063 

" Diff highlighting 
Hi DiffAdd     #c26129 #c9c0bb 036 250 
Hi DiffChange  #998c85 #c9c0bb 245 250 
Hi DiffDelete  #4d7703 #c9c0bb 057 250 
Hi DiffText    #598b04 #c9c0bb 000 250 
Hi DiffAdded   #c26129 #eeeae8 036 254 
Hi DiffFile    #4d7703 #eeeae8 057 254 
Hi DiffNewFile #c26129 #eeeae8 036 254 
Hi DiffLine    #598b04 #eeeae8 000 254 
Hi DiffRemoved #4d7703 #eeeae8 057 254 

" Git highlighting 
Hi gitCommitOverflow #4d7703 NONE 057 
Hi gitCommitSummary  #6f645d NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #c26129 #c9c0bb 036 250 
Hi GitGutterChange #598b04 #c9c0bb 000 250 
Hi GitGutterDelete #4d7703 #c9c0bb 057 250 
Hi GitGutterChangeDelete #d34431 #c9c0bb 106 250 

" XML highlighting 
Hi xmlTag     #b5aba6 NONE 248  
Hi xmlEndTag  #b5aba6 NONE 248  
Hi xmlTagName #85776f NONE 243  

" HTML highlighting 
Hi htmlBold      #776803 NONE 020 
Hi htmlItalic    #4b4102 NONE 018 
Hi htmlTag       #b5aba6  NONE 248  
Hi htmlEndTag    #b5aba6  NONE 248  
Hi htmlStatement #a05022 NONE 030 

" JavaScript highlighting 
Hi javaScript          #6f645d NONE 241 
Hi javaScriptBraces    #b5aba6  NONE 248  
Hi javaScriptNumber    #8b7904 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #598b04 NONE 000 
Hi jsStatement         #d34431 NONE 106 
Hi jsReturn            #d34431 NONE 106 
Hi jsThis              #4d7703 NONE 057 
Hi jsClassDefinition   #d34431 NONE 106 
Hi jsFunction          #d34431 NONE 106 
Hi jsFuncName          #598b04 NONE 000 
Hi jsFuncCall          #598b04 NONE 000 
Hi jsClassFuncName     #598b04 NONE 000 
Hi jsClassMethodType   #d34431 NONE 106 
Hi jsRegexpString      #958204 NONE 039 
Hi jsGlobalObjects     #d34431 NONE 106 
Hi jsGlobalNodeObjects #d34431 NONE 106 
Hi jsExceptions        #d34431 NONE 106 
Hi jsBuiltins          #d34431 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #d34431 NONE 106 
Hi mailQuoted2 #c26129 NONE 036 
Hi mailQuoted3 #d34431 NONE 106 
Hi mailQuoted4 #958204 NONE 039 
Hi mailQuoted5 #598b04 NONE 000 
Hi mailQuoted6 #d34431 NONE 106 
Hi mailURL     #598b04 NONE 000 
Hi mailEmail   #598b04 NONE 000 

" Markdown highlighting 
Hi markdownCode             #c26129 NONE 036 
Hi markdownError            #6f645d #e5dfdc 241 253 
Hi markdownCodeBlock        #c26129 NONE 036 
Hi markdownHeadingDelimiter #8b7904 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #598b04 NONE 000 
Hi NERDTreeExecFile #6f645d NONE 241 

" PHP highlighting 
Hi phpMemberSelector #6f645d NONE 241 
Hi phpComparison     #6f645d NONE 241 
Hi phpParent         #b5aba6  NONE 248  
Hi phpVarSelector    #958204 NONE 039 

" Python highlighting 
Hi pythonOperator #d34431 NONE 106 
Hi pythonRepeat   #d34431 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #598b04 NONE 000 
Hi rubyConstant               #bd3a28 NONE 100 
Hi rubyInterpolation          #c26129 NONE 036 
Hi rubyInterpolationDelimiter #958204 NONE 039 
Hi rubyRegexp                 #958204 NONE 039 
Hi rubySymbol                 #c26129 NONE 036 
Hi rubyStringDelimiter        #958204 NONE 039 

" SASS highlighting 
Hi sassidChar       #4d7703 NONE 057 
Hi sassClassChar    #8b7904 NONE 021 
Hi sassInclude      #d34431 NONE 106 
Hi sassMixing       #d34431 NONE 106 
Hi sassMixinName    #598b04 NONE 000 
Hi scssAttribute    #b5aba6  NONE 248  
Hi scssDefinition   #b5aba6  NONE 248  
Hi scssFunctionName #b15925 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #c26129 #c9c0bb 036 250 
Hi SignifySignChange #598b04 #c9c0bb 000 250 
Hi SignifySignDelete #4d7703 #c9c0bb 057 250 

" Spelling highlighting 
Hi SpellBad   #4d7703 #eeeae8 057 254 undercurl undercurl 
Hi SpellLocal #958204 #eeeae8 039 254 undercurl undercurl 
Hi SpellCap   #598b04 #eeeae8 000 254 undercurl undercurl 
Hi SpellRare  #d34431 #eeeae8 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#6f645d guibg=s:#958204 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d2cac6"   
  let g:terminal_color_1  = "#609504"  
  let g:terminal_color_2  = "#a29790"  
  let g:terminal_color_3  = "#998c85"  
  let g:terminal_color_4  = "#7a6e66"  
  let g:terminal_color_5  = "#6f645d"  
  let g:terminal_color_6  = "#211e1c"  
  let g:terminal_color_7  = "#0d0907"  
  let g:terminal_color_8  = "#4d7703"  
  let g:terminal_color_9  = "#8b7904"  
  let g:terminal_color_10 = "#d34431"  
  let g:terminal_color_11 = "#ee9968 " 
  let g:terminal_color_12 = "#958204"  
  let g:terminal_color_13 = "#598b04"  
  let g:terminal_color_14 = "#d34431"  
  let g:terminal_color_15 = "#d2cac6 " 
endif 

