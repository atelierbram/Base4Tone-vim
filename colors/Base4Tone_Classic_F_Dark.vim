" colorscheme: Base4Tone_Classic_F by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_F_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_F_Dark" 

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
Hi Debug        #64c1f7 NONE 147 
Hi Directory    #8bcf17 NONE 048 
Hi Error        #1f211c #64c1f7 234 
Hi ErrorMsg     #64c1f7 #1f211c 147 
Hi Exception    #64c1f7 NONE 147 
Hi FoldColumn   #0ab84a #3f4238 045 237 
Hi Folded       #7d8471 #3f4238 243 237 
Hi IncSearch    #ebd547 #5a4e02 191 058 
Hi Macro        #64c1f7 NONE 147 
Hi MatchParen   #95dc18 #4e4c41 048 238 
Hi ModeMsg      #78b80a NONE 042 
Hi MoreMsg      #78b80a NONE 042 
Hi Question     #0580c7 NONE 063 
Hi Search       #e2e5dc #b8a10a 253 142 
Hi SpecialKey   #7d8471 NONE 243 
Hi TooLong      #64c1f7 NONE 147 
Hi Underlined   #18d85e NONE 051 
Hi Ignore       #494d42  NONE 238  
Hi Visual       NONE #3f4238 NONE 237 
Hi VisualNOS    #64c1f7 NONE 147 
Hi WarningMsg   #64c1f7 NONE 147 
Hi WildMenu     #0d0c07 #b8a10a 000 142
Hi Menu         #0d0c07 #b8a10a 000 142
Hi Scrollbar    #0d0c07 #b8a10a 000 142
Hi Tooltip      #0d0c07 #b8a10a 000 142
Hi Title        #18d85e NONE 051 NONE NONE 
Hi Conceal      #0580c7 #1f211c 063 234 
Hi Cursor       #1a2801 #85826f 000 243 
Hi NonText      #7d8471 NONE 243 
Hi Normal       #f6ffe6 #1f211c 015 234 
Hi LineNr       #53584b #2a2c26  239 235  
Hi SignColumn   #34372f #737967 236 242 
Hi NonText      #7d8471 NONE 243 
Hi Normal       #f6ffe6 #1f211c 015 234 
Hi LineNr       #53584b #2a2c26  239 235  
Hi SignColumn   #34372f #737967 243 237 
Hi StatusLine   #5e6354 #151711 240 233 NONE NONE 
Hi StatusLineNC #737967 #2a2c26 242 235 NONE NONE 
Hi VertSplit    #1f211c #1f211c 234 234 
Hi CursorColumn NONE #3f4238 NONE 237 NONE NONE 
Hi CursorLine   NONE #2a2c26 NONE 235 NONE NONE 
Hi CursorLineNr #7d8471 #3f4238 243 237 
Hi PMenu        #9ba191 #3f4238 246 237 
Hi PMenuSel     #3f4238 #9ba191 237 246 
Hi TabLine      #7d8471 #3f4238 243 237 
Hi TabLineFill  #7d8471 #3f4238 243 237 
Hi TabLineSel   #78b80a #3f4238 042 237 

" Standard syntax highlighting 
Hi Boolean      #15bc52 NONE 045 
Hi Character    #64c1f7 NONE 147 
Hi Comment      #5e6354  NONE 240  
Hi Conditional  #b8a10a NONE 142 
Hi Constant     #dcc218 NONE 184 
Hi Define       #b8a10a NONE 142 
Hi Delimiter    #049539 NONE 039 
Hi Float        #15bc52 NONE 045 
Hi Function     #15bc52 NONE 045 
Hi Identifier   #bfbdb0 NONE 249 
Hi Include      #2facf4 NONE 069 
Hi Keyword      #b8a10a NONE 142 
Hi Label        #b8a10a NONE 142 
Hi Number       #e6ffef NONE 015 
Hi Operator     #ced2c6 NONE 251 
Hi PreProc      #b8a10a NONE 142 
Hi Repeat       #b8a10a NONE 142 
Hi Special      #95dc18 NONE 048 
Hi SpecialChar  #20a6f3 NONE 069 
Hi Statement    #9be61a NONE 048 NONE NONE 
Hi StorageClass #19e162 NONE 051 
Hi String       #b5ec55 NONE 049 
Hi Structure    #b8a10a NONE 142 
Hi Tag          #b8a10a NONE 142 
Hi Todo         #ebd547 #304b02 191 024 
Hi Type         #dcc218 NONE 184 NONE NONE NONE 
Hi Typedef      #b8a10a NONE 142 
Hi Noise        #5e6354 NONE  240 

" C highlighting 
Hi cOperator  #0ab84a NONE 045 
Hi cPreCondit #b8a10a NONE 142 

" C# highlighting 
Hi csClass                #b8a10a NONE 142 
Hi csAttribute            #b8a10a NONE 142 
Hi csModifier             #b8a10a NONE 142 
Hi csType                 #64c1f7 NONE 147 
Hi csUnspecifiedStatement #2facf4 NONE 069 
Hi csContextualStatement  #b8a10a NONE 142 
Hi csNewDecleration       #64c1f7 NONE 147 

" CSS highlighting 
Hi cssBraces     #53584b  NONE 239  
Hi cssClassName  #bfbdb0 NONE 249 
Hi cssColor      #78b80a NONE 042 
Hi cssImportant  #12a0f3 NONE 069 

" Diff highlighting 
Hi DiffAdd     #78b80a #3f4238 042 237 
Hi DiffChange  #7d8471 #3f4238 243 237 
Hi DiffDelete  #64c1f7 #3f4238 147 237 
Hi DiffText    #2facf4 #3f4238 069 237 
Hi DiffAdded   #78b80a #1f211c 042 234 
Hi DiffFile    #64c1f7 #1f211c 147 234 
Hi DiffNewFile #78b80a #1f211c 042 234 
Hi DiffLine    #2facf4 #1f211c 069 234 
Hi DiffRemoved #64c1f7 #1f211c 147 234 

" Git highlighting 
Hi gitCommitOverflow #64c1f7 NONE 147 
Hi gitCommitSummary  #a5ab9c NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #78b80a #3f4238 042 237 
Hi GitGutterChange #2facf4 #3f4238 069 237 
Hi GitGutterDelete #64c1f7 #3f4238 147 237 
Hi GitGutterChangeDelete #b8a10a #3f4238 142 237 

" XML highlighting 
Hi xmlTag     #5e6354 NONE 240  
Hi xmlEndTag  #5e6354 NONE 240  
Hi xmlTagName #919886 NONE 245  

" HTML highlighting 
Hi htmlBold      #18d85e NONE 051 
Hi htmlItalic    #5aed90 NONE 051 
Hi htmlTag       #5e6354  NONE 240  
Hi htmlEndTag    #5e6354  NONE 240  
Hi htmlStatement #8bcf17 NONE 048 

" JavaScript highlighting 
Hi javaScript          #a5ab9c NONE 247 
Hi javaScriptBraces    #5e6354  NONE 240  
Hi javaScriptNumber    #15bc52 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #2facf4 NONE 069 
Hi jsStatement         #b8a10a NONE 142 
Hi jsReturn            #b8a10a NONE 142 
Hi jsThis              #64c1f7 NONE 147 
Hi jsClassDefinition   #b8a10a NONE 142 
Hi jsFunction          #b8a10a NONE 142 
Hi jsFuncName          #2facf4 NONE 069 
Hi jsFuncCall          #2facf4 NONE 069 
Hi jsClassFuncName     #2facf4 NONE 069 
Hi jsClassMethodType   #b8a10a NONE 142 
Hi jsRegexpString      #0ab84a NONE 045 
Hi jsGlobalObjects     #b8a10a NONE 142 
Hi jsGlobalNodeObjects #b8a10a NONE 142 
Hi jsExceptions        #b8a10a NONE 142 
Hi jsBuiltins          #b8a10a NONE 142 

" Mail highlighting 
Hi mailQuoted1 #b8a10a NONE 142 
Hi mailQuoted2 #78b80a NONE 042 
Hi mailQuoted3 #b8a10a NONE 142 
Hi mailQuoted4 #0ab84a NONE 045 
Hi mailQuoted5 #2facf4 NONE 069 
Hi mailQuoted6 #b8a10a NONE 142 
Hi mailURL     #2facf4 NONE 069 
Hi mailEmail   #2facf4 NONE 069 

" Markdown highlighting 
Hi markdownCode             #78b80a NONE 042 
Hi markdownError            #a5ab9c #1f211c 247 234 
Hi markdownCodeBlock        #78b80a NONE 042 
Hi markdownHeadingDelimiter #15bc52 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #2facf4 NONE 069 
Hi NERDTreeExecFile #a5ab9c NONE 247 

" PHP highlighting 
Hi phpMemberSelector #a5ab9c NONE 247 
Hi phpComparison     #a5ab9c NONE 247 
Hi phpParent         #5e6354  NONE 240  
Hi phpVarSelector    #0ab84a NONE 045 

" Python highlighting 
Hi pythonOperator #b8a10a NONE 142 
Hi pythonRepeat   #b8a10a NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #2facf4 NONE 069 
Hi rubyConstant               #c1aa15 NONE 142 
Hi rubyInterpolation          #78b80a NONE 042 
Hi rubyInterpolationDelimiter #0ab84a NONE 045 
Hi rubyRegexp                 #0ab84a NONE 045 
Hi rubySymbol                 #78b80a NONE 042 
Hi rubyStringDelimiter        #0ab84a NONE 045 

" SASS highlighting 
Hi sassidChar       #64c1f7 NONE 147 
Hi sassClassChar    #15bc52 NONE 045 
Hi sassInclude      #b8a10a NONE 142 
Hi sassMixing       #b8a10a NONE 142 
Hi sassMixinName    #2facf4 NONE 069 
Hi scssAttribute    #5e6354  NONE 240  
Hi scssDefinition   #5e6354  NONE 240  
Hi scssFunctionName #82c115 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #78b80a #3f4238 042 237 
Hi SignifySignChange #2facf4 #3f4238 069 237 
Hi SignifySignDelete #64c1f7 #3f4238 147 237 

" Spelling highlighting 
Hi SpellBad   #64c1f7 #1f211c 147 234 undercurl undercurl 
Hi SpellLocal #0ab84a #1f211c 045 234 undercurl undercurl 
Hi SpellCap   #2facf4 #1f211c 069 234 undercurl undercurl 
Hi SpellRare  #b8a10a #1f211c 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#a5ab9c guibg=s:#0ab84a guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#34372f"   
  let g:terminal_color_1  = "#20a6f3"  
  let g:terminal_color_2  = "#737967"  
  let g:terminal_color_3  = "#7d8471"  
  let g:terminal_color_4  = "#9ba191"  
  let g:terminal_color_5  = "#a5ab9c"  
  let g:terminal_color_6  = "#e2e5dc"  
  let g:terminal_color_7  = "#f8f9f6"  
  let g:terminal_color_8  = "#64c1f7"  
  let g:terminal_color_9  = "#15bc52"  
  let g:terminal_color_10 = "#b8a10a"  
  let g:terminal_color_11 = "#436803 " 
  let g:terminal_color_12 = "#0ab84a"  
  let g:terminal_color_13 = "#2facf4"  
  let g:terminal_color_14 = "#b8a10a"  
  let g:terminal_color_15 = "#3f4238 " 
endif 

