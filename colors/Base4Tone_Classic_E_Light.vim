" colorscheme: Base4Tone_Classic_E by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_E_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_E_Light" 

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
Hi Debug        #036e7c NONE 057 
Hi Directory    #738103 NONE 030 
Hi Error        #e4e5dc #036e7c 253 
Hi ErrorMsg     #036e7c #e4e5dc 057 
Hi Exception    #036e7c NONE 057 
Hi FoldColumn   #3f920c #d1d2c6 039 251 
Hi Folded       #979985 #d1d2c6 245 251 
Hi IncSearch    #6d4503 #eeb863 058 191 
Hi Macro        #036e7c NONE 057 
Hi MatchParen   #e4e5dc #979985 253 245 
Hi ModeMsg      #849504 NONE 036 
Hi MoreMsg      #849504 NONE 036 
Hi Question     #22acbf NONE 069 
Hi Search       #e4e5dc #d5880b 253 142 
Hi SpecialKey   #979985 NONE 245 
Hi TooLong      #036e7c NONE 057 
Hi Underlined   #33760a NONE 020 
Hi Ignore       #c7c9bb  NONE 250  
Hi Visual       NONE #d1d2c6 NONE 251 
Hi VisualNOS    #036e7c NONE 057 
Hi WarningMsg   #036e7c NONE 057 
Hi WildMenu     #f9f8f6 #ae6d04 015 106
Hi Menu         #f9f8f6 #ae6d04 015 106
Hi Scrollbar    #f9f8f6 #ae6d04 015 106
Hi Tooltip      #f9f8f6 #ae6d04 015 106
Hi Title        #33760a NONE 020 NONE NONE 
Hi Conceal      #22acbf #e4e5dc 069 253 
Hi Cursor       #f9f9f6 #9a9184 015 245 
Hi NonText      #979985 NONE 245 
Hi Normal       #161901 #e4e5dc 000 253 
Hi LineNr       #bdbfb0 #dadcd1  249 252  
Hi SignColumn   #d1d2c6 #a0a290 251 246 
Hi StatusLine   #b3b5a6 #edeee8 248 254 NONE NONE 
Hi StatusLineNC #a0a290 #dadcd1 246 252 NONE NONE 
Hi VertSplit    #e4e5dc #e4e5dc 253 253 
Hi CursorColumn NONE #414338 NONE 237 NONE NONE 
Hi CursorLine   NONE #dadcd1 NONE 252 NONE NONE 
Hi CursorLineNr #979985 #c7c9bb 245 250 
Hi PMenu        #787a66 #c7c9bb 242 250 
Hi PMenuSel     #c7c9bb #787a66 250 242 
Hi TabLine      #979985 #c7c9bb 245 250 
Hi TabLineFill  #979985 #c7c9bb 245 250 
Hi TabLineSel   #849504 #c7c9bb 036 250 

" Standard syntax highlighting 
Hi Boolean      #3b890b NONE 021 
Hi Character    #036e7c NONE 057 
Hi Comment      #b3b5a6  NONE 248  
Hi Conditional  #ae6d04 NONE 106 
Hi Constant     #8b5704 NONE 100 
Hi Define       #ae6d04 NONE 106 
Hi Delimiter    #51b314 NONE 045 
Hi Float        #3b890b NONE 021 
Hi Function     #3b890b NONE 021 
Hi Identifier   #5a5449 NONE 239 
Hi Include      #047b8b NONE 000 
Hi Keyword      #ae6d04 NONE 106 
Hi Label        #ae6d04 NONE 106 
Hi Number       #0c1c02 NONE 017 
Hi Operator     #37382e NONE 236 
Hi PreProc      #ae6d04 NONE 106 
Hi Repeat       #ae6d04 NONE 106 
Hi Special      #6a7703 NONE 030 
Hi SpecialChar  #048495 NONE 063 
Hi Statement    #4f5a02 NONE 022 NONE NONE 
Hi StorageClass #275a07 NONE 019 
Hi String       #424b02 NONE 024 
Hi Structure    #ae6d04 NONE 106 
Hi Tag          #ae6d04 NONE 106 
Hi Todo         #5a3802 #dced5a 058 049 
Hi Type         #8b5704 NONE 100 NONE NONE NONE 
Hi Typedef      #ae6d04 NONE 106 
Hi Noise        #b3b5a6 NONE  248 

" C highlighting 
Hi cOperator  #3f920c NONE 039 
Hi cPreCondit #ae6d04 NONE 106 

" C# highlighting 
Hi csClass                #ae6d04 NONE 106 
Hi csAttribute            #ae6d04 NONE 106 
Hi csModifier             #ae6d04 NONE 106 
Hi csType                 #036e7c NONE 057 
Hi csUnspecifiedStatement #047b8b NONE 000 
Hi csContextualStatement  #ae6d04 NONE 106 
Hi csNewDecleration       #036e7c NONE 057 

" CSS highlighting 
Hi cssBraces     #bdbfb0  NONE 249  
Hi cssClassName  #5a5449 NONE 239 
Hi cssColor      #849504 NONE 036 
Hi cssImportant  #088ea0 NONE 063 

" Diff highlighting 
Hi DiffAdd     #849504 #c7c9bb 036 250 
Hi DiffChange  #979985 #c7c9bb 245 250 
Hi DiffDelete  #036e7c #c7c9bb 057 250 
Hi DiffText    #047b8b #c7c9bb 000 250 
Hi DiffAdded   #849504 #edeee8 036 254 
Hi DiffFile    #036e7c #edeee8 057 254 
Hi DiffNewFile #849504 #edeee8 036 254 
Hi DiffLine    #047b8b #edeee8 000 254 
Hi DiffRemoved #036e7c #edeee8 057 254 

" Git highlighting 
Hi gitCommitOverflow #036e7c NONE 057 
Hi gitCommitSummary  #6d6f5d NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #849504 #c7c9bb 036 250 
Hi GitGutterChange #047b8b #c7c9bb 000 250 
Hi GitGutterDelete #036e7c #c7c9bb 057 250 
Hi GitGutterChangeDelete #ae6d04 #c7c9bb 106 250 

" XML highlighting 
Hi xmlTag     #b3b5a6 NONE 248  
Hi xmlEndTag  #b3b5a6 NONE 248  
Hi xmlTagName #83856f NONE 243  

" HTML highlighting 
Hi htmlBold      #33760a NONE 020 
Hi htmlItalic    #214b06 NONE 018 
Hi htmlTag       #b3b5a6  NONE 248  
Hi htmlEndTag    #b3b5a6  NONE 248  
Hi htmlStatement #738103 NONE 030 

" JavaScript highlighting 
Hi javaScript          #6d6f5d NONE 241 
Hi javaScriptBraces    #b3b5a6  NONE 248  
Hi javaScriptNumber    #3b890b NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #047b8b NONE 000 
Hi jsStatement         #ae6d04 NONE 106 
Hi jsReturn            #ae6d04 NONE 106 
Hi jsThis              #036e7c NONE 057 
Hi jsClassDefinition   #ae6d04 NONE 106 
Hi jsFunction          #ae6d04 NONE 106 
Hi jsFuncName          #047b8b NONE 000 
Hi jsFuncCall          #047b8b NONE 000 
Hi jsClassFuncName     #047b8b NONE 000 
Hi jsClassMethodType   #ae6d04 NONE 106 
Hi jsRegexpString      #3f920c NONE 039 
Hi jsGlobalObjects     #ae6d04 NONE 106 
Hi jsGlobalNodeObjects #ae6d04 NONE 106 
Hi jsExceptions        #ae6d04 NONE 106 
Hi jsBuiltins          #ae6d04 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #ae6d04 NONE 106 
Hi mailQuoted2 #849504 NONE 036 
Hi mailQuoted3 #ae6d04 NONE 106 
Hi mailQuoted4 #3f920c NONE 039 
Hi mailQuoted5 #047b8b NONE 000 
Hi mailQuoted6 #ae6d04 NONE 106 
Hi mailURL     #047b8b NONE 000 
Hi mailEmail   #047b8b NONE 000 

" Markdown highlighting 
Hi markdownCode             #849504 NONE 036 
Hi markdownError            #6d6f5d #e4e5dc 241 253 
Hi markdownCodeBlock        #849504 NONE 036 
Hi markdownHeadingDelimiter #3b890b NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #047b8b NONE 000 
Hi NERDTreeExecFile #6d6f5d NONE 241 

" PHP highlighting 
Hi phpMemberSelector #6d6f5d NONE 241 
Hi phpComparison     #6d6f5d NONE 241 
Hi phpParent         #b3b5a6  NONE 248  
Hi phpVarSelector    #3f920c NONE 039 

" Python highlighting 
Hi pythonOperator #ae6d04 NONE 106 
Hi pythonRepeat   #ae6d04 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #047b8b NONE 000 
Hi rubyConstant               #9f6404 NONE 100 
Hi rubyInterpolation          #849504 NONE 036 
Hi rubyInterpolationDelimiter #3f920c NONE 039 
Hi rubyRegexp                 #3f920c NONE 039 
Hi rubySymbol                 #849504 NONE 036 
Hi rubyStringDelimiter        #3f920c NONE 039 

" SASS highlighting 
Hi sassidChar       #036e7c NONE 057 
Hi sassClassChar    #3b890b NONE 021 
Hi sassInclude      #ae6d04 NONE 106 
Hi sassMixing       #ae6d04 NONE 106 
Hi sassMixinName    #047b8b NONE 000 
Hi scssAttribute    #b3b5a6  NONE 248  
Hi scssDefinition   #b3b5a6  NONE 248  
Hi scssFunctionName #7b8b04 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #849504 #c7c9bb 036 250 
Hi SignifySignChange #047b8b #c7c9bb 000 250 
Hi SignifySignDelete #036e7c #c7c9bb 057 250 

" Spelling highlighting 
Hi SpellBad   #036e7c #edeee8 057 254 undercurl undercurl 
Hi SpellLocal #3f920c #edeee8 039 254 undercurl undercurl 
Hi SpellCap   #047b8b #edeee8 000 254 undercurl undercurl 
Hi SpellRare  #ae6d04 #edeee8 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#6d6f5d guibg=s:#3f920c guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#d1d2c6"   
  let g:terminal_color_1  = "#048495"  
  let g:terminal_color_2  = "#a0a290"  
  let g:terminal_color_3  = "#979985"  
  let g:terminal_color_4  = "#787a66"  
  let g:terminal_color_5  = "#6d6f5d"  
  let g:terminal_color_6  = "#21211c"  
  let g:terminal_color_7  = "#0d0d07"  
  let g:terminal_color_8  = "#036e7c"  
  let g:terminal_color_9  = "#3b890b"  
  let g:terminal_color_10 = "#ae6d04"  
  let g:terminal_color_11 = "#c5dc18 " 
  let g:terminal_color_12 = "#3f920c"  
  let g:terminal_color_13 = "#047b8b"  
  let g:terminal_color_14 = "#ae6d04"  
  let g:terminal_color_15 = "#d1d2c6 " 
endif 

