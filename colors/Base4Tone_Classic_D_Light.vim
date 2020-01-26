" colorscheme: Base4Tone_Classic_D by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_D_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_D_Light" 

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
Hi Debug        #007061 NONE 057 
Hi Directory    #817003 NONE 030 
Hi Error        #e5e4dc #007061 253 
Hi ErrorMsg     #007061 #e5e4dc 057 
Hi Exception    #007061 NONE 057 
Hi FoldColumn   #609504 #d2d0c6 039 251 
Hi Folded       #999685 #d2d0c6 245 251 
Hi IncSearch    #723918 #f2b28c 058 191 
Hi Macro        #007061 NONE 057 
Hi MatchParen   #9f8a04 #c9c0bb 036 250 
Hi ModeMsg      #958204 NONE 036 
Hi MoreMsg      #958204 NONE 036 
Hi Question     #19ae9a NONE 069 
Hi Search       #e5e4dc #e47b3f 253 142 
Hi SpecialKey   #999685 NONE 245 
Hi TooLong      #007061 NONE 057 
Hi Underlined   #4d7703 NONE 020 
Hi Ignore       #c9c7bb  NONE 250  
Hi Visual       NONE #d2d0c6 NONE 251 
Hi VisualNOS    #007061 NONE 057 
Hi WarningMsg   #007061 NONE 057 
Hi WildMenu     #f9f7f6 #c26129 015 106
Hi Menu         #f9f7f6 #c26129 015 106
Hi Scrollbar    #f9f7f6 #c26129 015 106
Hi Tooltip      #f9f7f6 #c26129 015 106
Hi Title        #4d7703 NONE 020 NONE NONE 
Hi Conceal      #19ae9a #e5e4dc 069 253 
Hi Cursor       #f9f8f6 #b5aba6 015 248 
Hi NonText      #999685 NONE 245 
Hi Normal       #191601 #eeede8 000 254 
Hi LineNr       #bfbdb0 #e5e4dc 249 253  
Hi SignColumn   #d2d0c6 #a2a090 251 246 
Hi StatusLine   #b5b3a6 #e5e4dc 248 253 NONE NONE 
Hi StatusLineNC #a2a090 #dcdad1 246 252 NONE NONE 
Hi VertSplit    #eeede8 #eeede8 254 254 
Hi CursorColumn NONE #434138 NONE 237 NONE NONE 
Hi CursorLine   NONE #e5e4dc NONE 253 NONE NONE 
Hi CursorLineNr #aba99b #dcdad1 247 252 
Hi PMenu        #7a7866 #e5e4dc 242 253 
Hi PMenuSel     #c9c7bb #e5e4dc 250 253 
Hi TabLine      #999685 #e5e4dc 245 253 
Hi TabLineFill  #999685 #e5e4dc 245 253 
Hi TabLineSel   #958204 #e5e4dc 036 253 

" Standard syntax highlighting 
Hi Boolean      #598b04 NONE 021 
Hi Character    #007061 NONE 057 
Hi Comment      #b5b3a6  NONE 248  
Hi Conditional  #c26129 NONE 106 
Hi Constant     #8f481e NONE 100 
Hi Define       #c26129 NONE 106 
Hi Delimiter    #78b80a NONE 045 
Hi Float        #598b04 NONE 021 
Hi Function     #598b04 NONE 021 
Hi Identifier   #59504a NONE 239 
Hi Include      #00806f NONE 000 
Hi Keyword      #c26129 NONE 106 
Hi Label        #c26129 NONE 106 
Hi Number       #101901 NONE 017 
Hi Operator     #38362e NONE 236 
Hi PreProc      #c26129 NONE 106 
Hi Repeat       #c26129 NONE 106 
Hi Special      #776803 NONE 030 
Hi SpecialChar  #008a77 NONE 063 
Hi Statement    #5a4e02 NONE 022 NONE NONE 
Hi StorageClass #3a5a02 NONE 019 
Hi String       #4b4102 NONE 024 
Hi Structure    #c26129 NONE 106 
Hi Tag          #c26129 NONE 106 
Hi Todo         #5d2e14 #ebd547 058 049 
Hi Type         #8f481e NONE 100 NONE NONE NONE 
Hi Typedef      #c26129 NONE 106 
Hi Noise        #b5b3a6 NONE  248 

" C highlighting 
Hi cOperator  #609504 NONE 039 
Hi cPreCondit #c26129 NONE 106 

" C# highlighting 
Hi csClass                #c26129 NONE 106 
Hi csAttribute            #c26129 NONE 106 
Hi csModifier             #c26129 NONE 106 
Hi csType                 #007061 NONE 057 
Hi csUnspecifiedStatement #00806f NONE 000 
Hi csContextualStatement  #c26129 NONE 106 
Hi csNewDecleration       #007061 NONE 057 

" CSS highlighting 
Hi cssBraces     #bfbdb0  NONE 249  
Hi cssClassName  #59504a NONE 239 
Hi cssColor      #958204 NONE 036 
Hi cssImportant  #049582 NONE 063 

" Diff highlighting 
Hi DiffAdd     #958204 #c9c7bb 036 250 
Hi DiffChange  #999685 #c9c7bb 245 250 
Hi DiffDelete  #007061 #c9c7bb 057 250 
Hi DiffText    #00806f #c9c7bb 000 250 
Hi DiffAdded   #958204 #eeede8 036 254 
Hi DiffFile    #007061 #eeede8 057 254 
Hi DiffNewFile #958204 #eeede8 036 254 
Hi DiffLine    #00806f #eeede8 000 254 
Hi DiffRemoved #007061 #eeede8 057 254 

" Git highlighting 
Hi gitCommitOverflow #007061 NONE 057 
Hi gitCommitSummary  #6f6d5d NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #958204 #c9c7bb 036 250 
Hi GitGutterChange #00806f #c9c7bb 000 250 
Hi GitGutterDelete #007061 #c9c7bb 057 250 
Hi GitGutterChangeDelete #c26129 #c9c7bb 106 250 

" XML highlighting 
Hi xmlTag     #b5b3a6 NONE 248  
Hi xmlEndTag  #b5b3a6 NONE 248  
Hi xmlTagName #85826f NONE 243  

" HTML highlighting 
Hi htmlBold      #4d7703 NONE 020 
Hi htmlItalic    #304b02 NONE 018 
Hi htmlTag       #b5b3a6  NONE 248  
Hi htmlEndTag    #b5b3a6  NONE 248  
Hi htmlStatement #817003 NONE 030 

" JavaScript highlighting 
Hi javaScript          #6f6d5d NONE 241 
Hi javaScriptBraces    #b5b3a6  NONE 248  
Hi javaScriptNumber    #598b04 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #00806f NONE 000 
Hi jsStatement         #c26129 NONE 106 
Hi jsReturn            #c26129 NONE 106 
Hi jsThis              #007061 NONE 057 
Hi jsClassDefinition   #c26129 NONE 106 
Hi jsFunction          #c26129 NONE 106 
Hi jsFuncName          #00806f NONE 000 
Hi jsFuncCall          #00806f NONE 000 
Hi jsClassFuncName     #00806f NONE 000 
Hi jsClassMethodType   #c26129 NONE 106 
Hi jsRegexpString      #609504 NONE 039 
Hi jsGlobalObjects     #c26129 NONE 106 
Hi jsGlobalNodeObjects #c26129 NONE 106 
Hi jsExceptions        #c26129 NONE 106 
Hi jsBuiltins          #c26129 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #c26129 NONE 106 
Hi mailQuoted2 #958204 NONE 036 
Hi mailQuoted3 #c26129 NONE 106 
Hi mailQuoted4 #609504 NONE 039 
Hi mailQuoted5 #00806f NONE 000 
Hi mailQuoted6 #c26129 NONE 106 
Hi mailURL     #00806f NONE 000 
Hi mailEmail   #00806f NONE 000 

" Markdown highlighting 
Hi markdownCode             #958204 NONE 036 
Hi markdownError            #6f6d5d #e5e4dc 241 253 
Hi markdownCodeBlock        #958204 NONE 036 
Hi markdownHeadingDelimiter #598b04 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #00806f NONE 000 
Hi NERDTreeExecFile #6f6d5d NONE 241 

" PHP highlighting 
Hi phpMemberSelector #6f6d5d NONE 241 
Hi phpComparison     #6f6d5d NONE 241 
Hi phpParent         #b5b3a6  NONE 248  
Hi phpVarSelector    #609504 NONE 039 

" Python highlighting 
Hi pythonOperator #c26129 NONE 106 
Hi pythonRepeat   #c26129 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #00806f NONE 000 
Hi rubyConstant               #b15925 NONE 100 
Hi rubyInterpolation          #958204 NONE 036 
Hi rubyInterpolationDelimiter #609504 NONE 039 
Hi rubyRegexp                 #609504 NONE 039 
Hi rubySymbol                 #958204 NONE 036 
Hi rubyStringDelimiter        #609504 NONE 039 

" SASS highlighting 
Hi sassidChar       #007061 NONE 057 
Hi sassClassChar    #598b04 NONE 021 
Hi sassInclude      #c26129 NONE 106 
Hi sassMixing       #c26129 NONE 106 
Hi sassMixinName    #00806f NONE 000 
Hi scssAttribute    #b5b3a6  NONE 248  
Hi scssDefinition   #b5b3a6  NONE 248  
Hi scssFunctionName #8b7904 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #958204 #c9c7bb 036 250 
Hi SignifySignChange #00806f #c9c7bb 000 250 
Hi SignifySignDelete #007061 #c9c7bb 057 250 

" Spelling highlighting 
Hi SpellBad   #007061 #eeede8 057 254 undercurl undercurl 
Hi SpellLocal #609504 #eeede8 039 254 undercurl undercurl 
Hi SpellCap   #00806f #eeede8 000 254 undercurl undercurl 
Hi SpellRare  #c26129 #eeede8 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#6f6d5d guibg=s:#609504 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d2d0c6"   
  let g:terminal_color_1  = "#008a77"  
  let g:terminal_color_2  = "#a2a090"  
  let g:terminal_color_3  = "#999685"  
  let g:terminal_color_4  = "#7a7866"  
  let g:terminal_color_5  = "#6f6d5d"  
  let g:terminal_color_6  = "#21211c"  
  let g:terminal_color_7  = "#0d0c07"  
  let g:terminal_color_8  = "#007061"  
  let g:terminal_color_9  = "#598b04"  
  let g:terminal_color_10 = "#c26129"  
  let g:terminal_color_11 = "#dcc218 " 
  let g:terminal_color_12 = "#609504"  
  let g:terminal_color_13 = "#00806f"  
  let g:terminal_color_14 = "#c26129"  
  let g:terminal_color_15 = "#d2d0c6 " 
endif 

