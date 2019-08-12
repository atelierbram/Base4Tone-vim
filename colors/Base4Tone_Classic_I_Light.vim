" colorscheme: Base4Tone_Classic_I by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_I_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_I_Light" 

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
Hi Debug        #364ddd NONE 057 
Hi Directory    #0a7f18 NONE 030 
Hi Error        #dde3de #364ddd 253 
Hi ErrorMsg     #364ddd #dde3de 057 
Hi Exception    #364ddd NONE 057 
Hi FoldColumn   #048495 #c8d0c9 039 251 
Hi Folded       #89948a #c8d0c9 245 251 
Hi IncSearch    #4f5a02 #dced5a 058 191 
Hi Macro        #364ddd NONE 057 
Hi MatchParen   #dde3de #89948a 253 245 
Hi ModeMsg      #0c971c NONE 036 
Hi MoreMsg      #0c971c NONE 036 
Hi Question     #7989f1 NONE 069 
Hi Search       #dde3de #a4b80a 253 142 
Hi SpecialKey   #89948a NONE 245 
Hi TooLong      #364ddd NONE 057 
Hi Underlined   #036e7c NONE 020 
Hi Ignore       #bec6bf  NONE 250  
Hi Visual       NONE #c8d0c9 NONE 251 
Hi VisualNOS    #364ddd NONE 057 
Hi WarningMsg   #364ddd NONE 057 
Hi WildMenu     #f9f9f6 #849504 015 106
Hi Menu         #f9f9f6 #849504 015 106
Hi Scrollbar    #f9f9f6 #849504 015 106
Hi Tooltip      #f9f9f6 #849504 015 106
Hi Title        #036e7c NONE 020 NONE NONE 
Hi Conceal      #7989f1 #dde3de 069 253 
Hi Cursor       #f6f9f6 #979985 015 245 
Hi NonText      #89948a NONE 245 
Hi Normal       #021c05 #dde3de 000 253 
Hi LineNr       #b3bcb4 #d3dad3  249 252  
Hi SignColumn   #c8d0c9 #949e95 251 246 
Hi StatusLine   #a9b1aa #e8ede9 248 254 NONE NONE 
Hi StatusLineNC #949e95 #d3dad3 246 252 NONE NONE 
Hi VertSplit    #dde3de #dde3de 253 253 
Hi CursorColumn NONE #3a403b NONE 237 NONE NONE 
Hi CursorLine   NONE #d3dad3 NONE 252 NONE NONE 
Hi CursorLineNr #89948a #bec6bf 245 250 
Hi PMenu        #6b766c #bec6bf 242 250 
Hi PMenuSel     #bec6bf #6b766c 250 242 
Hi TabLine      #89948a #bec6bf 245 250 
Hi TabLineFill  #89948a #bec6bf 245 250 
Hi TabLineSel   #0c971c #bec6bf 036 250 

" Standard syntax highlighting 
Hi Boolean      #047b8b NONE 021 
Hi Character    #364ddd NONE 057 
Hi Comment      #a9b1aa  NONE 248  
Hi Conditional  #849504 NONE 106 
Hi Constant     #6a7703 NONE 100 
Hi Define       #849504 NONE 106 
Hi Delimiter    #22acbf NONE 045 
Hi Float        #047b8b NONE 021 
Hi Function     #047b8b NONE 021 
Hi Identifier   #57594a NONE 239 
Hi Include      #4b60e7 NONE 000 
Hi Keyword      #849504 NONE 106 
Hi Label        #849504 NONE 106 
Hi Number       #011619 NONE 017 
Hi Operator     #303631 NONE 236 
Hi PreProc      #849504 NONE 106 
Hi Repeat       #849504 NONE 106 
Hi Special      #0a7616 NONE 030 
Hi SpecialChar  #5468e8 NONE 063 
Hi Statement    #075a11 NONE 022 NONE NONE 
Hi StorageClass #02545e NONE 019 
Hi String       #064b0e NONE 024 
Hi Structure    #849504 NONE 106 
Hi Tag          #849504 NONE 106 
Hi Todo         #424b02 #67e476 058 049 
Hi Type         #6a7703 NONE 100 NONE NONE NONE 
Hi Typedef      #849504 NONE 106 
Hi Noise        #a9b1aa NONE  248 

" C highlighting 
Hi cOperator  #048495 NONE 039 
Hi cPreCondit #849504 NONE 106 

" C# highlighting 
Hi csClass                #849504 NONE 106 
Hi csAttribute            #849504 NONE 106 
Hi csModifier             #849504 NONE 106 
Hi csType                 #364ddd NONE 057 
Hi csUnspecifiedStatement #4b60e7 NONE 000 
Hi csContextualStatement  #849504 NONE 106 
Hi csNewDecleration       #364ddd NONE 057 

" CSS highlighting 
Hi cssBraces     #b3bcb4  NONE 249  
Hi cssClassName  #57594a NONE 239 
Hi cssColor      #0c971c NONE 036 
Hi cssImportant  #5c6feb NONE 063 

" Diff highlighting 
Hi DiffAdd     #0c971c #bec6bf 036 250 
Hi DiffChange  #89948a #bec6bf 245 250 
Hi DiffDelete  #364ddd #bec6bf 057 250 
Hi DiffText    #4b60e7 #bec6bf 000 250 
Hi DiffAdded   #0c971c #e8ede9 036 254 
Hi DiffFile    #364ddd #e8ede9 057 254 
Hi DiffNewFile #0c971c #e8ede9 036 254 
Hi DiffLine    #4b60e7 #e8ede9 000 254 
Hi DiffRemoved #364ddd #e8ede9 057 254 

" Git highlighting 
Hi gitCommitOverflow #364ddd NONE 057 
Hi gitCommitSummary  #616b62 NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #0c971c #bec6bf 036 250 
Hi GitGutterChange #4b60e7 #bec6bf 000 250 
Hi GitGutterDelete #364ddd #bec6bf 057 250 
Hi GitGutterChangeDelete #849504 #bec6bf 106 250 

" XML highlighting 
Hi xmlTag     #a9b1aa NONE 248  
Hi xmlEndTag  #a9b1aa NONE 248  
Hi xmlTagName #748176 NONE 243  

" HTML highlighting 
Hi htmlBold      #036e7c NONE 020 
Hi htmlItalic    #024750 NONE 018 
Hi htmlTag       #a9b1aa  NONE 248  
Hi htmlEndTag    #a9b1aa  NONE 248  
Hi htmlStatement #0a7f18 NONE 030 

" JavaScript highlighting 
Hi javaScript          #616b62 NONE 241 
Hi javaScriptBraces    #a9b1aa  NONE 248  
Hi javaScriptNumber    #047b8b NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #4b60e7 NONE 000 
Hi jsStatement         #849504 NONE 106 
Hi jsReturn            #849504 NONE 106 
Hi jsThis              #364ddd NONE 057 
Hi jsClassDefinition   #849504 NONE 106 
Hi jsFunction          #849504 NONE 106 
Hi jsFuncName          #4b60e7 NONE 000 
Hi jsFuncCall          #4b60e7 NONE 000 
Hi jsClassFuncName     #4b60e7 NONE 000 
Hi jsClassMethodType   #849504 NONE 106 
Hi jsRegexpString      #048495 NONE 039 
Hi jsGlobalObjects     #849504 NONE 106 
Hi jsGlobalNodeObjects #849504 NONE 106 
Hi jsExceptions        #849504 NONE 106 
Hi jsBuiltins          #849504 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #849504 NONE 106 
Hi mailQuoted2 #0c971c NONE 036 
Hi mailQuoted3 #849504 NONE 106 
Hi mailQuoted4 #048495 NONE 039 
Hi mailQuoted5 #4b60e7 NONE 000 
Hi mailQuoted6 #849504 NONE 106 
Hi mailURL     #4b60e7 NONE 000 
Hi mailEmail   #4b60e7 NONE 000 

" Markdown highlighting 
Hi markdownCode             #0c971c NONE 036 
Hi markdownError            #616b62 #dde3de 241 253 
Hi markdownCodeBlock        #0c971c NONE 036 
Hi markdownHeadingDelimiter #047b8b NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #4b60e7 NONE 000 
Hi NERDTreeExecFile #616b62 NONE 241 

" PHP highlighting 
Hi phpMemberSelector #616b62 NONE 241 
Hi phpComparison     #616b62 NONE 241 
Hi phpParent         #a9b1aa  NONE 248  
Hi phpVarSelector    #048495 NONE 039 

" Python highlighting 
Hi pythonOperator #849504 NONE 106 
Hi pythonRepeat   #849504 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #4b60e7 NONE 000 
Hi rubyConstant               #7b8b04 NONE 100 
Hi rubyInterpolation          #0c971c NONE 036 
Hi rubyInterpolationDelimiter #048495 NONE 039 
Hi rubyRegexp                 #048495 NONE 039 
Hi rubySymbol                 #0c971c NONE 036 
Hi rubyStringDelimiter        #048495 NONE 039 

" SASS highlighting 
Hi sassidChar       #364ddd NONE 057 
Hi sassClassChar    #047b8b NONE 021 
Hi sassInclude      #849504 NONE 106 
Hi sassMixing       #849504 NONE 106 
Hi sassMixinName    #4b60e7 NONE 000 
Hi scssAttribute    #a9b1aa  NONE 248  
Hi scssDefinition   #a9b1aa  NONE 248  
Hi scssFunctionName #0b891a NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #0c971c #bec6bf 036 250 
Hi SignifySignChange #4b60e7 #bec6bf 000 250 
Hi SignifySignDelete #364ddd #bec6bf 057 250 

" Spelling highlighting 
Hi SpellBad   #364ddd #e8ede9 057 254 undercurl undercurl 
Hi SpellLocal #048495 #e8ede9 039 254 undercurl undercurl 
Hi SpellCap   #4b60e7 #e8ede9 000 254 undercurl undercurl 
Hi SpellRare  #849504 #e8ede9 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#616b62 guibg=s:#048495 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#c8d0c9"   
  let g:terminal_color_1  = "#5468e8"  
  let g:terminal_color_2  = "#949e95"  
  let g:terminal_color_3  = "#89948a"  
  let g:terminal_color_4  = "#6b766c"  
  let g:terminal_color_5  = "#616b62"  
  let g:terminal_color_6  = "#1d201d"  
  let g:terminal_color_7  = "#080d08"  
  let g:terminal_color_8  = "#364ddd"  
  let g:terminal_color_9  = "#047b8b"  
  let g:terminal_color_10 = "#849504"  
  let g:terminal_color_11 = "#2bda3f " 
  let g:terminal_color_12 = "#048495"  
  let g:terminal_color_13 = "#4b60e7"  
  let g:terminal_color_14 = "#849504"  
  let g:terminal_color_15 = "#c8d0c9 " 
endif 

