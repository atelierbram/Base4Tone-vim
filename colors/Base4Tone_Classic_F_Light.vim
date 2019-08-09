" colorscheme: Base4Tone_Classic_F by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_F_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_F_Light" 

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
Hi Debug        #036aa6 NONE 057 
Hi Directory    #538103 NONE 030 
Hi Error        #e2e5dc #036aa6 253 
Hi ErrorMsg     #036aa6 #e2e5dc 057 
Hi Exception    #036aa6 NONE 057 
Hi FoldColumn   #049539 #ced2c6 039 251 
Hi Folded       #919886 #ced2c6 245 251 
Hi IncSearch    #5a4e02 #ebd547 058 191 
Hi Macro        #036aa6 NONE 057 
Hi MatchParen   #e2e5dc #919886 253 245 
Hi ModeMsg      #609504 NONE 036 
Hi MoreMsg      #609504 NONE 036 
Hi Question     #20a6f3 NONE 069 
Hi Search       #e2e5dc #b8a10a 253 142 
Hi SpecialKey   #919886 NONE 245 
Hi TooLong      #036aa6 NONE 057 
Hi Underlined   #03772e NONE 020 
Hi Ignore       #c4c9bb  NONE 250  
Hi Visual       NONE #ced2c6 NONE 251 
Hi VisualNOS    #036aa6 NONE 057 
Hi WarningMsg   #036aa6 NONE 057 
Hi WildMenu     #f9f8f6 #958204 015 106
Hi Menu         #f9f8f6 #958204 015 106
Hi Scrollbar    #f9f8f6 #958204 015 106
Hi Tooltip      #f9f8f6 #958204 015 106
Hi Title        #03772e NONE 020 NONE NONE 
Hi Conceal      #20a6f3 #e2e5dc 069 253 
Hi Cursor       #f8f9f6 #999685 015 245 
Hi NonText      #919886 NONE 245 
Hi Normal       #101901 #e2e5dc 000 253 
Hi LineNr       #babfb0 #d8dcd1  249 252  
Hi SignColumn   #ced2c6 #9ba191 251 246 
Hi StatusLine   #afb5a6 #ebeee8 248 254 NONE NONE 
Hi StatusLineNC #9ba191 #d8dcd1 246 252 NONE NONE 
Hi VertSplit    #e2e5dc #e2e5dc 253 253 
Hi CursorColumn NONE #3f4238 NONE 237 NONE NONE 
Hi CursorLine   NONE #d8dcd1 NONE 252 NONE NONE 
Hi CursorLineNr #919886 #c4c9bb 245 250 
Hi PMenu        #737967 #c4c9bb 242 250 
Hi PMenuSel     #c4c9bb #737967 250 242 
Hi TabLine      #919886 #c4c9bb 245 250 
Hi TabLineFill  #919886 #c4c9bb 245 250 
Hi TabLineSel   #609504 #c4c9bb 036 250 

" Standard syntax highlighting 
Hi Boolean      #048b35 NONE 021 
Hi Character    #036aa6 NONE 057 
Hi Comment      #afb5a6  NONE 248  
Hi Conditional  #958204 NONE 106 
Hi Constant     #776803 NONE 100 
Hi Define       #958204 NONE 106 
Hi Delimiter    #0ab84a NONE 045 
Hi Float        #048b35 NONE 021 
Hi Function     #048b35 NONE 021 
Hi Identifier   #59574a NONE 239 
Hi Include      #037abf NONE 000 
Hi Keyword      #958204 NONE 106 
Hi Label        #958204 NONE 106 
Hi Number       #01190a NONE 017 
Hi Operator     #34372f NONE 236 
Hi PreProc      #958204 NONE 106 
Hi Repeat       #958204 NONE 106 
Hi Special      #4d7703 NONE 030 
Hi SpecialChar  #0580c7 NONE 063 
Hi Statement    #3a5a02 NONE 022 NONE NONE 
Hi StorageClass #025a22 NONE 019 
Hi String       #304b02 NONE 024 
Hi Structure    #958204 NONE 106 
Hi Tag          #958204 NONE 106 
Hi Todo         #4b4102 #b5ec55 058 049 
Hi Type         #776803 NONE 100 NONE NONE NONE 
Hi Typedef      #958204 NONE 106 
Hi Noise        #afb5a6 NONE  248 

" C highlighting 
Hi cOperator  #049539 NONE 039 
Hi cPreCondit #958204 NONE 106 

" C# highlighting 
Hi csClass                #958204 NONE 106 
Hi csAttribute            #958204 NONE 106 
Hi csModifier             #958204 NONE 106 
Hi csType                 #036aa6 NONE 057 
Hi csUnspecifiedStatement #037abf NONE 000 
Hi csContextualStatement  #958204 NONE 106 
Hi csNewDecleration       #036aa6 NONE 057 

" CSS highlighting 
Hi cssBraces     #babfb0  NONE 249  
Hi cssClassName  #59574a NONE 239 
Hi cssColor      #609504 NONE 036 
Hi cssImportant  #0b88d0 NONE 063 

" Diff highlighting 
Hi DiffAdd     #609504 #c4c9bb 036 250 
Hi DiffChange  #919886 #c4c9bb 245 250 
Hi DiffDelete  #036aa6 #c4c9bb 057 250 
Hi DiffText    #037abf #c4c9bb 000 250 
Hi DiffAdded   #609504 #ebeee8 036 254 
Hi DiffFile    #036aa6 #ebeee8 057 254 
Hi DiffNewFile #609504 #ebeee8 036 254 
Hi DiffLine    #037abf #ebeee8 000 254 
Hi DiffRemoved #036aa6 #ebeee8 057 254 

" Git highlighting 
Hi gitCommitOverflow #036aa6 NONE 057 
Hi gitCommitSummary  #686e5e NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #609504 #c4c9bb 036 250 
Hi GitGutterChange #037abf #c4c9bb 000 250 
Hi GitGutterDelete #036aa6 #c4c9bb 057 250 
Hi GitGutterChangeDelete #958204 #c4c9bb 106 250 

" XML highlighting 
Hi xmlTag     #afb5a6 NONE 248  
Hi xmlEndTag  #afb5a6 NONE 248  
Hi xmlTagName #7d8471 NONE 243  

" HTML highlighting 
Hi htmlBold      #03772e NONE 020 
Hi htmlItalic    #024b1d NONE 018 
Hi htmlTag       #afb5a6  NONE 248  
Hi htmlEndTag    #afb5a6  NONE 248  
Hi htmlStatement #538103 NONE 030 

" JavaScript highlighting 
Hi javaScript          #686e5e NONE 241 
Hi javaScriptBraces    #afb5a6  NONE 248  
Hi javaScriptNumber    #048b35 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #037abf NONE 000 
Hi jsStatement         #958204 NONE 106 
Hi jsReturn            #958204 NONE 106 
Hi jsThis              #036aa6 NONE 057 
Hi jsClassDefinition   #958204 NONE 106 
Hi jsFunction          #958204 NONE 106 
Hi jsFuncName          #037abf NONE 000 
Hi jsFuncCall          #037abf NONE 000 
Hi jsClassFuncName     #037abf NONE 000 
Hi jsClassMethodType   #958204 NONE 106 
Hi jsRegexpString      #049539 NONE 039 
Hi jsGlobalObjects     #958204 NONE 106 
Hi jsGlobalNodeObjects #958204 NONE 106 
Hi jsExceptions        #958204 NONE 106 
Hi jsBuiltins          #958204 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #958204 NONE 106 
Hi mailQuoted2 #609504 NONE 036 
Hi mailQuoted3 #958204 NONE 106 
Hi mailQuoted4 #049539 NONE 039 
Hi mailQuoted5 #037abf NONE 000 
Hi mailQuoted6 #958204 NONE 106 
Hi mailURL     #037abf NONE 000 
Hi mailEmail   #037abf NONE 000 

" Markdown highlighting 
Hi markdownCode             #609504 NONE 036 
Hi markdownError            #686e5e #e2e5dc 241 253 
Hi markdownCodeBlock        #609504 NONE 036 
Hi markdownHeadingDelimiter #048b35 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #037abf NONE 000 
Hi NERDTreeExecFile #686e5e NONE 241 

" PHP highlighting 
Hi phpMemberSelector #686e5e NONE 241 
Hi phpComparison     #686e5e NONE 241 
Hi phpParent         #afb5a6  NONE 248  
Hi phpVarSelector    #049539 NONE 039 

" Python highlighting 
Hi pythonOperator #958204 NONE 106 
Hi pythonRepeat   #958204 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #037abf NONE 000 
Hi rubyConstant               #8b7904 NONE 100 
Hi rubyInterpolation          #609504 NONE 036 
Hi rubyInterpolationDelimiter #049539 NONE 039 
Hi rubyRegexp                 #049539 NONE 039 
Hi rubySymbol                 #609504 NONE 036 
Hi rubyStringDelimiter        #049539 NONE 039 

" SASS highlighting 
Hi sassidChar       #036aa6 NONE 057 
Hi sassClassChar    #048b35 NONE 021 
Hi sassInclude      #958204 NONE 106 
Hi sassMixing       #958204 NONE 106 
Hi sassMixinName    #037abf NONE 000 
Hi scssAttribute    #afb5a6  NONE 248  
Hi scssDefinition   #afb5a6  NONE 248  
Hi scssFunctionName #598b04 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #609504 #c4c9bb 036 250 
Hi SignifySignChange #037abf #c4c9bb 000 250 
Hi SignifySignDelete #036aa6 #c4c9bb 057 250 

" Spelling highlighting 
Hi SpellBad   #036aa6 #ebeee8 057 254 undercurl undercurl 
Hi SpellLocal #049539 #ebeee8 039 254 undercurl undercurl 
Hi SpellCap   #037abf #ebeee8 000 254 undercurl undercurl 
Hi SpellRare  #958204 #ebeee8 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#686e5e guibg=s:#049539 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#ced2c6"   
  let g:terminal_color_1  = "#0580c7"  
  let g:terminal_color_2  = "#9ba191"  
  let g:terminal_color_3  = "#919886"  
  let g:terminal_color_4  = "#737967"  
  let g:terminal_color_5  = "#686e5e"  
  let g:terminal_color_6  = "#1f211c"  
  let g:terminal_color_7  = "#0b0d07"  
  let g:terminal_color_8  = "#036aa6"  
  let g:terminal_color_9  = "#048b35"  
  let g:terminal_color_10 = "#958204"  
  let g:terminal_color_11 = "#95dc18 " 
  let g:terminal_color_12 = "#049539"  
  let g:terminal_color_13 = "#037abf"  
  let g:terminal_color_14 = "#958204"  
  let g:terminal_color_15 = "#ced2c6 " 
endif 

