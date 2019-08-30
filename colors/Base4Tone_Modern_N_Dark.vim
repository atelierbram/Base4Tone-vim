" colorscheme: Base4Tone_Modern_N by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Modern_N_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Modern_N_Dark" 

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
Hi Debug        #f17eaa NONE 147 
Hi Directory    #47b5f5 NONE 048 
Hi Error        #1a2023 #f17eaa 234 
Hi ErrorMsg     #f17eaa #1a2023 147 
Hi Exception    #f17eaa NONE 147 
Hi FoldColumn   #7989f1 #344046 045 237 
Hi Folded       #687f8d #344046 243 237 
Hi IncSearch    #ebd547 #5a4e02 191 058 
Hi Macro        #f17eaa NONE 147 
Hi MatchParen   #1a2023 #687f8d 234 243 
Hi ModeMsg      #20a6f3 NONE 042 
Hi MoreMsg      #20a6f3 NONE 042 
Hi Question     #d22d6c NONE 063 
Hi Search       #dce2e5 #b8a10a 253 142 
Hi SpecialKey   #687f8d NONE 243 
Hi TooLong      #f17eaa NONE 147 
Hi Underlined   #a0acf8 NONE 051 
Hi Ignore       #3d4a52  NONE 238  
Hi Visual       NONE #344046 NONE 237 
Hi VisualNOS    #f17eaa NONE 147 
Hi WarningMsg   #f17eaa NONE 147 
Hi WildMenu     #0d0c07 #b8a10a 000 142
Hi Menu         #0d0c07 #b8a10a 000 142
Hi Scrollbar    #0d0c07 #b8a10a 000 142
Hi Tooltip      #0d0c07 #b8a10a 000 142
Hi Title        #a0acf8 NONE 051 NONE NONE 
Hi Conceal      #d22d6c #1a2023 063 234 
Hi Cursor       #070b0d #85826f 000 243 
Hi NonText      #687f8d NONE 243 
Hi Normal       #f0f9ff #1a2023 015 234 
Hi LineNr       #45555e #232a2f  239 235  
Hi SignColumn   #2b353b #5f7581 236 242 
Hi NonText      #687f8d NONE 243 
Hi Normal       #f0f9ff #1a2023 015 234 
Hi LineNr       #45555e #232a2f  239 235  
Hi SignColumn   #2b353b #5f7581 243 237 
Hi StatusLine   #4e5f6a #111517 240 233 NONE NONE 
Hi StatusLineNC #5f7581 #232a2f 242 235 NONE NONE 
Hi VertSplit    #1a2023 #1a2023 234 234 
Hi CursorColumn NONE #344046 NONE 237 NONE NONE 
Hi CursorLine   NONE #232a2f NONE 235 NONE NONE 
Hi CursorLineNr #687f8d #344046 243 237 
Hi PMenu        #8a9da8 #344046 246 237 
Hi PMenuSel     #344046 #8a9da8 237 246 
Hi TabLine      #687f8d #344046 243 237 
Hi TabLineFill  #687f8d #344046 243 237 
Hi TabLineSel   #20a6f3 #344046 042 237 

" Standard syntax highlighting 
Hi Boolean      #8493f6 NONE 045 
Hi Character    #f17eaa NONE 147 
Hi Comment      #4e5f6a  NONE 240  
Hi Conditional  #b8a10a NONE 142 
Hi Constant     #dcc218 NONE 184 
Hi Define       #b8a10a NONE 142 
Hi Delimiter    #5468e8 NONE 039 
Hi Float        #8493f6 NONE 045 
Hi Function     #8493f6 NONE 045 
Hi Identifier   #bfbdb0 NONE 249 
Hi Include      #e96396 NONE 069 
Hi Keyword      #b8a10a NONE 142 
Hi Label        #b8a10a NONE 142 
Hi Number       #f0f2ff NONE 015 
Hi Operator     #c4ced4 NONE 251 
Hi PreProc      #b8a10a NONE 142 
Hi Repeat       #b8a10a NONE 142 
Hi Special      #64c1f7 NONE 048 
Hi SpecialChar  #e7558d NONE 069 
Hi Statement    #81cdf8 NONE 048 NONE NONE 
Hi StorageClass #aeb8f9 NONE 051 
Hi String       #99d6fa NONE 049 
Hi Structure    #b8a10a NONE 142 
Hi Tag          #b8a10a NONE 142 
Hi Todo         #ebd547 #024369 191 024 
Hi Type         #dcc218 NONE 184 NONE NONE NONE 
Hi Typedef      #b8a10a NONE 142 
Hi Noise        #4e5f6a NONE  240 

" C highlighting 
Hi cOperator  #7989f1 NONE 045 
Hi cPreCondit #b8a10a NONE 142 

" C# highlighting 
Hi csClass                #b8a10a NONE 142 
Hi csAttribute            #b8a10a NONE 142 
Hi csModifier             #b8a10a NONE 142 
Hi csType                 #f17eaa NONE 147 
Hi csUnspecifiedStatement #e96396 NONE 069 
Hi csContextualStatement  #b8a10a NONE 142 
Hi csNewDecleration       #f17eaa NONE 147 

" CSS highlighting 
Hi cssBraces     #45555e  NONE 239  
Hi cssClassName  #bfbdb0 NONE 249 
Hi cssColor      #20a6f3 NONE 042 
Hi cssImportant  #e64d87 NONE 069 

" Diff highlighting 
Hi DiffAdd     #20a6f3 #344046 042 237 
Hi DiffChange  #687f8d #344046 243 237 
Hi DiffDelete  #f17eaa #344046 147 237 
Hi DiffText    #e96396 #344046 069 237 
Hi DiffAdded   #20a6f3 #1a2023 042 234 
Hi DiffFile    #f17eaa #1a2023 147 234 
Hi DiffNewFile #20a6f3 #1a2023 042 234 
Hi DiffLine    #e96396 #1a2023 069 234 
Hi DiffRemoved #f17eaa #1a2023 147 234 

" Git highlighting 
Hi gitCommitOverflow #f17eaa NONE 147 
Hi gitCommitSummary  #95a7b1 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #20a6f3 #344046 042 237 
Hi GitGutterChange #e96396 #344046 069 237 
Hi GitGutterDelete #f17eaa #344046 147 237 
Hi GitGutterChangeDelete #b8a10a #344046 142 237 

" XML highlighting 
Hi xmlTag     #4e5f6a NONE 240  
Hi xmlEndTag  #4e5f6a NONE 240  
Hi xmlTagName #7e93a0 NONE 245  

" HTML highlighting 
Hi htmlBold      #a0acf8 NONE 051 
Hi htmlItalic    #b8c1fa NONE 051 
Hi htmlTag       #4e5f6a  NONE 240  
Hi htmlEndTag    #4e5f6a  NONE 240  
Hi htmlStatement #47b5f5 NONE 048 

" JavaScript highlighting 
Hi javaScript          #95a7b1 NONE 247 
Hi javaScriptBraces    #4e5f6a  NONE 240  
Hi javaScriptNumber    #8493f6 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #e96396 NONE 069 
Hi jsStatement         #b8a10a NONE 142 
Hi jsReturn            #b8a10a NONE 142 
Hi jsThis              #f17eaa NONE 147 
Hi jsClassDefinition   #b8a10a NONE 142 
Hi jsFunction          #b8a10a NONE 142 
Hi jsFuncName          #e96396 NONE 069 
Hi jsFuncCall          #e96396 NONE 069 
Hi jsClassFuncName     #e96396 NONE 069 
Hi jsClassMethodType   #b8a10a NONE 142 
Hi jsRegexpString      #7989f1 NONE 045 
Hi jsGlobalObjects     #b8a10a NONE 142 
Hi jsGlobalNodeObjects #b8a10a NONE 142 
Hi jsExceptions        #b8a10a NONE 142 
Hi jsBuiltins          #b8a10a NONE 142 

" Mail highlighting 
Hi mailQuoted1 #b8a10a NONE 142 
Hi mailQuoted2 #20a6f3 NONE 042 
Hi mailQuoted3 #b8a10a NONE 142 
Hi mailQuoted4 #7989f1 NONE 045 
Hi mailQuoted5 #e96396 NONE 069 
Hi mailQuoted6 #b8a10a NONE 142 
Hi mailURL     #e96396 NONE 069 
Hi mailEmail   #e96396 NONE 069 

" Markdown highlighting 
Hi markdownCode             #20a6f3 NONE 042 
Hi markdownError            #95a7b1 #1a2023 247 234 
Hi markdownCodeBlock        #20a6f3 NONE 042 
Hi markdownHeadingDelimiter #8493f6 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #e96396 NONE 069 
Hi NERDTreeExecFile #95a7b1 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #95a7b1 NONE 247 
Hi phpComparison     #95a7b1 NONE 247 
Hi phpParent         #4e5f6a  NONE 240  
Hi phpVarSelector    #7989f1 NONE 045 

" Python highlighting 
Hi pythonOperator #b8a10a NONE 142 
Hi pythonRepeat   #b8a10a NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #e96396 NONE 069 
Hi rubyConstant               #c1aa15 NONE 142 
Hi rubyInterpolation          #20a6f3 NONE 042 
Hi rubyInterpolationDelimiter #7989f1 NONE 045 
Hi rubyRegexp                 #7989f1 NONE 045 
Hi rubySymbol                 #20a6f3 NONE 042 
Hi rubyStringDelimiter        #7989f1 NONE 045 

" SASS highlighting 
Hi sassidChar       #f17eaa NONE 147 
Hi sassClassChar    #8493f6 NONE 045 
Hi sassInclude      #b8a10a NONE 142 
Hi sassMixing       #b8a10a NONE 142 
Hi sassMixinName    #e96396 NONE 069 
Hi scssAttribute    #4e5f6a  NONE 240  
Hi scssDefinition   #4e5f6a  NONE 240  
Hi scssFunctionName #2facf4 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #20a6f3 #344046 042 237 
Hi SignifySignChange #e96396 #344046 069 237 
Hi SignifySignDelete #f17eaa #344046 147 237 

" Spelling highlighting 
Hi SpellBad   #f17eaa #1a2023 147 234 undercurl undercurl 
Hi SpellLocal #7989f1 #1a2023 045 234 undercurl undercurl 
Hi SpellCap   #e96396 #1a2023 069 234 undercurl undercurl 
Hi SpellRare  #b8a10a #1a2023 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#95a7b1 guibg=s:#7989f1 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#2b353b"   
  let g:terminal_color_1  = "#e7558d"  
  let g:terminal_color_2  = "#5f7581"  
  let g:terminal_color_3  = "#687f8d"  
  let g:terminal_color_4  = "#8a9da8"  
  let g:terminal_color_5  = "#95a7b1"  
  let g:terminal_color_6  = "#dce2e5"  
  let g:terminal_color_7  = "#f6f8f9"  
  let g:terminal_color_8  = "#f17eaa"  
  let g:terminal_color_9  = "#8493f6"  
  let g:terminal_color_10 = "#b8a10a"  
  let g:terminal_color_11 = "#025d92 " 
  let g:terminal_color_12 = "#7989f1"  
  let g:terminal_color_13 = "#e96396"  
  let g:terminal_color_14 = "#b8a10a"  
  let g:terminal_color_15 = "#344046 " 
endif 

