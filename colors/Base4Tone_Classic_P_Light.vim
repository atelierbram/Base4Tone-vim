" colorscheme: Base4Tone_Classic_P by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_P_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_P_Light" 

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
Hi Debug        #841f93 NONE 057 
Hi Directory    #4358df NONE 030 
Hi Error        #dcdde5 #841f93 253 
Hi ErrorMsg     #841f93 #dcdde5 057 
Hi Exception    #841f93 NONE 057 
Hi FoldColumn   #8652e0 #c6c8d2 039 251 
Hi Folded       #858799 #c6c8d2 245 251 
Hi IncSearch    #02545e #7ddce8 058 191 
Hi Macro        #841f93 NONE 057 
Hi MatchParen   #dcdde5 #858799 253 245 
Hi ModeMsg      #5468e8 NONE 036 
Hi MoreMsg      #5468e8 NONE 036 
Hi Question     #d355e7 NONE 069 
Hi Search       #dcdde5 #22acbf 253 142 
Hi SpecialKey   #858799 NONE 245 
Hi TooLong      #841f93 NONE 057 
Hi Underlined   #6b2bda NONE 020 
Hi Ignore       #bbbdc9  NONE 250  
Hi Visual       NONE #c6c8d2 NONE 251 
Hi VisualNOS    #841f93 NONE 057 
Hi WarningMsg   #841f93 NONE 057 
Hi WildMenu     #f6f9f9 #048495 015 106
Hi Menu         #f6f9f9 #048495 015 106
Hi Scrollbar    #f6f9f9 #048495 015 106
Hi Tooltip      #f6f9f9 #048495 015 106
Hi Title        #6b2bda NONE 020 NONE NONE 
Hi Conceal      #d355e7 #dcdde5 069 253 
Hi Cursor       #f6f6f9 #a3b6b8 015 248 
Hi NonText      #858799 NONE 245 
Hi Normal       #090f34 #e8e8ee 000 254 
Hi LineNr       #b0b2bf #dcdde5  249 253  
Hi SignColumn   #c6c8d2 #9092a2 251 246 
Hi StatusLine   #a6a8b5 #dcdde5 248 253 NONE NONE 
Hi StatusLineNC #9092a2 #d1d2dc 246 252 NONE NONE 
Hi VertSplit    #e8e8ee #e8e8ee 254 254 
Hi CursorColumn NONE #383943 NONE 237 NONE NONE 
Hi CursorLine   NONE #dcdde5 NONE 253 NONE NONE 
Hi CursorLineNr #9b9dab #d1d2dc 247 252 
Hi PMenu        #66697a #dcdde5 242 253 
Hi PMenuSel     #bbbdc9 #dcdde5 250 253 
Hi TabLine      #858799 #dcdde5 245 253 
Hi TabLineFill  #858799 #dcdde5 245 253 
Hi TabLineSel   #5468e8 #dcdde5 036 253 

" Standard syntax highlighting 
Hi Boolean      #8049df NONE 021 
Hi Character    #841f93 NONE 057 
Hi Comment      #a6a8b5  NONE 248  
Hi Conditional  #048495 NONE 106 
Hi Constant     #036e7c NONE 100 
Hi Define       #048495 NONE 106 
Hi Delimiter    #9c6cef NONE 045 
Hi Float        #8049df NONE 021 
Hi Function     #8049df NONE 021 
Hi Identifier   #475a5c NONE 239 
Hi Include      #b52bca NONE 000 
Hi Keyword      #048495 NONE 106 
Hi Label        #048495 NONE 106 
Hi Number       #110623 NONE 017 
Hi Operator     #2e3038 NONE 236 
Hi PreProc      #048495 NONE 106 
Hi Repeat       #048495 NONE 106 
Hi Special      #364ddd NONE 030 
Hi SpecialChar  #be31d3 NONE 063 
Hi Statement    #233bd1 NONE 022 NONE NONE 
Hi StorageClass #531fad NONE 019 
Hi String       #1f33b7 NONE 024 
Hi Structure    #048495 NONE 106 
Hi Tag          #048495 NONE 106 
Hi Todo         #024750 #b8c1fa 058 049 
Hi Type         #036e7c NONE 100 NONE NONE NONE 
Hi Typedef      #048495 NONE 106 
Hi Noise        #a6a8b5 NONE  248 

" C highlighting 
Hi cOperator  #8652e0 NONE 039 
Hi cPreCondit #048495 NONE 106 

" C# highlighting 
Hi csClass                #048495 NONE 106 
Hi csAttribute            #048495 NONE 106 
Hi csModifier             #048495 NONE 106 
Hi csType                 #841f93 NONE 057 
Hi csUnspecifiedStatement #b52bca NONE 000 
Hi csContextualStatement  #048495 NONE 106 
Hi csNewDecleration       #841f93 NONE 057 

" CSS highlighting 
Hi cssBraces     #b0b2bf  NONE 249  
Hi cssClassName  #475a5c NONE 239 
Hi cssColor      #5468e8 NONE 036 
Hi cssImportant  #c039d5 NONE 063 

" Diff highlighting 
Hi DiffAdd     #5468e8 #bbbdc9 036 250 
Hi DiffChange  #858799 #bbbdc9 245 250 
Hi DiffDelete  #841f93 #bbbdc9 057 250 
Hi DiffText    #b52bca #bbbdc9 000 250 
Hi DiffAdded   #5468e8 #e8e8ee 036 254 
Hi DiffFile    #841f93 #e8e8ee 057 254 
Hi DiffNewFile #5468e8 #e8e8ee 036 254 
Hi DiffLine    #b52bca #e8e8ee 000 254 
Hi DiffRemoved #841f93 #e8e8ee 057 254 

" Git highlighting 
Hi gitCommitOverflow #841f93 NONE 057 
Hi gitCommitSummary  #5d5f6f NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #5468e8 #bbbdc9 036 250 
Hi GitGutterChange #b52bca #bbbdc9 000 250 
Hi GitGutterDelete #841f93 #bbbdc9 057 250 
Hi GitGutterChangeDelete #048495 #bbbdc9 106 250 

" XML highlighting 
Hi xmlTag     #a6a8b5 NONE 248  
Hi xmlEndTag  #a6a8b5 NONE 248  
Hi xmlTagName #6f7285 NONE 243  

" HTML highlighting 
Hi htmlBold      #6b2bda NONE 020 
Hi htmlItalic    #491b98 NONE 018 
Hi htmlTag       #a6a8b5  NONE 248  
Hi htmlEndTag    #a6a8b5  NONE 248  
Hi htmlStatement #4358df NONE 030 

" JavaScript highlighting 
Hi javaScript          #5d5f6f NONE 241 
Hi javaScriptBraces    #a6a8b5  NONE 248  
Hi javaScriptNumber    #8049df NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #b52bca NONE 000 
Hi jsStatement         #048495 NONE 106 
Hi jsReturn            #048495 NONE 106 
Hi jsThis              #841f93 NONE 057 
Hi jsClassDefinition   #048495 NONE 106 
Hi jsFunction          #048495 NONE 106 
Hi jsFuncName          #b52bca NONE 000 
Hi jsFuncCall          #b52bca NONE 000 
Hi jsClassFuncName     #b52bca NONE 000 
Hi jsClassMethodType   #048495 NONE 106 
Hi jsRegexpString      #8652e0 NONE 039 
Hi jsGlobalObjects     #048495 NONE 106 
Hi jsGlobalNodeObjects #048495 NONE 106 
Hi jsExceptions        #048495 NONE 106 
Hi jsBuiltins          #048495 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #048495 NONE 106 
Hi mailQuoted2 #5468e8 NONE 036 
Hi mailQuoted3 #048495 NONE 106 
Hi mailQuoted4 #8652e0 NONE 039 
Hi mailQuoted5 #b52bca NONE 000 
Hi mailQuoted6 #048495 NONE 106 
Hi mailURL     #b52bca NONE 000 
Hi mailEmail   #b52bca NONE 000 

" Markdown highlighting 
Hi markdownCode             #5468e8 NONE 036 
Hi markdownError            #5d5f6f #dcdde5 241 253 
Hi markdownCodeBlock        #5468e8 NONE 036 
Hi markdownHeadingDelimiter #8049df NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #b52bca NONE 000 
Hi NERDTreeExecFile #5d5f6f NONE 241 

" PHP highlighting 
Hi phpMemberSelector #5d5f6f NONE 241 
Hi phpComparison     #5d5f6f NONE 241 
Hi phpParent         #a6a8b5  NONE 248  
Hi phpVarSelector    #8652e0 NONE 039 

" Python highlighting 
Hi pythonOperator #048495 NONE 106 
Hi pythonRepeat   #048495 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #b52bca NONE 000 
Hi rubyConstant               #047b8b NONE 100 
Hi rubyInterpolation          #5468e8 NONE 036 
Hi rubyInterpolationDelimiter #8652e0 NONE 039 
Hi rubyRegexp                 #8652e0 NONE 039 
Hi rubySymbol                 #5468e8 NONE 036 
Hi rubyStringDelimiter        #8652e0 NONE 039 

" SASS highlighting 
Hi sassidChar       #841f93 NONE 057 
Hi sassClassChar    #8049df NONE 021 
Hi sassInclude      #048495 NONE 106 
Hi sassMixing       #048495 NONE 106 
Hi sassMixinName    #b52bca NONE 000 
Hi scssAttribute    #a6a8b5  NONE 248  
Hi scssDefinition   #a6a8b5  NONE 248  
Hi scssFunctionName #4b60e7 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #5468e8 #bbbdc9 036 250 
Hi SignifySignChange #b52bca #bbbdc9 000 250 
Hi SignifySignDelete #841f93 #bbbdc9 057 250 

" Spelling highlighting 
Hi SpellBad   #841f93 #e8e8ee 057 254 undercurl undercurl 
Hi SpellLocal #8652e0 #e8e8ee 039 254 undercurl undercurl 
Hi SpellCap   #b52bca #e8e8ee 000 254 undercurl undercurl 
Hi SpellRare  #048495 #e8e8ee 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#5d5f6f guibg=s:#8652e0 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#c6c8d2"   
  let g:terminal_color_1  = "#be31d3"  
  let g:terminal_color_2  = "#9092a2"  
  let g:terminal_color_3  = "#858799"  
  let g:terminal_color_4  = "#66697a"  
  let g:terminal_color_5  = "#5d5f6f"  
  let g:terminal_color_6  = "#1c1d21"  
  let g:terminal_color_7  = "#07080d"  
  let g:terminal_color_8  = "#841f93"  
  let g:terminal_color_9  = "#8049df"  
  let g:terminal_color_10 = "#048495"  
  let g:terminal_color_11 = "#a0acf8 " 
  let g:terminal_color_12 = "#8652e0"  
  let g:terminal_color_13 = "#b52bca"  
  let g:terminal_color_14 = "#048495"  
  let g:terminal_color_15 = "#c6c8d2 " 
endif 

