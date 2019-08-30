" colorscheme: Base4Tone_Modern_C by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Modern_C_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Modern_C_Dark" 

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
Hi Debug        #a0acf8 NONE 147 
Hi Directory    #e6971a NONE 048 
Hi Error        #221f1c #a0acf8 234 
Hi ErrorMsg     #a0acf8 #221f1c 147 
Hi Exception    #a0acf8 NONE 147 
Hi FoldColumn   #19ae9a #433f37 045 237 
Hi Folded       #877d6e #433f37 243 237 
Hi IncSearch    #f5a3c2 #76193d 191 058 
Hi Macro        #a0acf8 NONE 147 
Hi MatchParen   #221f1c #877d6e 234 243 
Hi ModeMsg      #d5880b NONE 042 
Hi MoreMsg      #d5880b NONE 042 
Hi Question     #5468e8 NONE 063 
Hi Search       #e5e1dc #e7558d 253 142 
Hi SpecialKey   #877d6e NONE 243 
Hi TooLong      #a0acf8 NONE 147 
Hi Underlined   #1ed2ba NONE 051 
Hi Ignore       #4f4940  NONE 238  
Hi Visual       NONE #433f37 NONE 237 
Hi VisualNOS    #a0acf8 NONE 147 
Hi WarningMsg   #a0acf8 NONE 147 
Hi WildMenu     #0d080a #e7558d 000 142
Hi Menu         #0d080a #e7558d 000 142
Hi Scrollbar    #0d080a #e7558d 000 142
Hi Tooltip      #0d080a #e7558d 000 142
Hi Title        #1ed2ba NONE 051 NONE NONE 
Hi Conceal      #5468e8 #221f1c 063 234 
Hi Cursor       #0d0b07 #817479 000 243 
Hi NonText      #877d6e NONE 243 
Hi Normal       #fff5e6 #221f1c 015 234 
Hi LineNr       #5a5449 #2d2a25  239 235  
Hi SignColumn   #38342e #7b7365 236 242 
Hi NonText      #877d6e NONE 243 
Hi Normal       #fff5e6 #221f1c 015 234 
Hi LineNr       #5a5449 #2d2a25  239 235  
Hi SignColumn   #38342e #7b7365 243 237 
Hi StatusLine   #655e53 #171511 240 233 NONE NONE 
Hi StatusLineNC #7b7365 #2d2a25 242 235 NONE NONE 
Hi VertSplit    #221f1c #221f1c 234 234 
Hi CursorColumn NONE #433f37 NONE 237 NONE NONE 
Hi CursorLine   NONE #2d2a25 NONE 235 NONE NONE 
Hi CursorLineNr #877d6e #433f37 243 237 
Hi PMenu        #a39b8f #433f37 246 237 
Hi PMenuSel     #433f37 #a39b8f 237 246 
Hi TabLine      #877d6e #433f37 243 237 
Hi TabLineFill  #877d6e #433f37 243 237 
Hi TabLineSel   #d5880b #433f37 042 237 

" Standard syntax highlighting 
Hi Boolean      #1bbba6 NONE 045 
Hi Character    #a0acf8 NONE 147 
Hi Comment      #655e53  NONE 240  
Hi Conditional  #e7558d NONE 142 
Hi Constant     #f17eaa NONE 184 
Hi Define       #e7558d NONE 142 
Hi Delimiter    #008a77 NONE 039 
Hi Float        #1bbba6 NONE 045 
Hi Function     #1bbba6 NONE 045 
Hi Identifier   #bdb3b6 NONE 249 
Hi Include      #8493f6 NONE 069 
Hi Keyword      #e7558d NONE 142 
Hi Label        #e7558d NONE 142 
Hi Number       #ebfffc NONE 015 
Hi Operator     #d2cdc6 NONE 251 
Hi PreProc      #e7558d NONE 142 
Hi Repeat       #e7558d NONE 142 
Hi Special      #e8a02c NONE 048 
Hi SpecialChar  #7989f1 NONE 069 
Hi Statement    #eaa83e NONE 048 NONE NONE 
Hi StorageClass #2fdac3 NONE 051 
Hi String       #eeb863 NONE 049 
Hi Structure    #e7558d NONE 142 
Hi Tag          #e7558d NONE 142 
Hi Todo         #f5a3c2 #5a3802 191 024 
Hi Type         #f17eaa NONE 184 NONE NONE NONE 
Hi Typedef      #e7558d NONE 142 
Hi Noise        #655e53 NONE  240 

" C highlighting 
Hi cOperator  #19ae9a NONE 045 
Hi cPreCondit #e7558d NONE 142 

" C# highlighting 
Hi csClass                #e7558d NONE 142 
Hi csAttribute            #e7558d NONE 142 
Hi csModifier             #e7558d NONE 142 
Hi csType                 #a0acf8 NONE 147 
Hi csUnspecifiedStatement #8493f6 NONE 069 
Hi csContextualStatement  #e7558d NONE 142 
Hi csNewDecleration       #a0acf8 NONE 147 

" CSS highlighting 
Hi cssBraces     #5a5449  NONE 239  
Hi cssClassName  #bdb3b6 NONE 249 
Hi cssColor      #d5880b NONE 042 
Hi cssImportant  #7081f0 NONE 069 

" Diff highlighting 
Hi DiffAdd     #d5880b #433f37 042 237 
Hi DiffChange  #877d6e #433f37 243 237 
Hi DiffDelete  #a0acf8 #433f37 147 237 
Hi DiffText    #8493f6 #433f37 069 237 
Hi DiffAdded   #d5880b #221f1c 042 234 
Hi DiffFile    #a0acf8 #221f1c 147 234 
Hi DiffNewFile #d5880b #221f1c 042 234 
Hi DiffLine    #8493f6 #221f1c 069 234 
Hi DiffRemoved #a0acf8 #221f1c 147 234 

" Git highlighting 
Hi gitCommitOverflow #a0acf8 NONE 147 
Hi gitCommitSummary  #aca59a NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #d5880b #433f37 042 237 
Hi GitGutterChange #8493f6 #433f37 069 237 
Hi GitGutterDelete #a0acf8 #433f37 147 237 
Hi GitGutterChangeDelete #e7558d #433f37 142 237 

" XML highlighting 
Hi xmlTag     #655e53 NONE 240  
Hi xmlEndTag  #655e53 NONE 240  
Hi xmlTagName #9a9184 NONE 245  

" HTML highlighting 
Hi htmlBold      #1ed2ba NONE 051 
Hi htmlItalic    #5fe3d1 NONE 051 
Hi htmlTag       #655e53  NONE 240  
Hi htmlEndTag    #655e53  NONE 240  
Hi htmlStatement #e6971a NONE 048 

" JavaScript highlighting 
Hi javaScript          #aca59a NONE 247 
Hi javaScriptBraces    #655e53  NONE 240  
Hi javaScriptNumber    #1bbba6 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #8493f6 NONE 069 
Hi jsStatement         #e7558d NONE 142 
Hi jsReturn            #e7558d NONE 142 
Hi jsThis              #a0acf8 NONE 147 
Hi jsClassDefinition   #e7558d NONE 142 
Hi jsFunction          #e7558d NONE 142 
Hi jsFuncName          #8493f6 NONE 069 
Hi jsFuncCall          #8493f6 NONE 069 
Hi jsClassFuncName     #8493f6 NONE 069 
Hi jsClassMethodType   #e7558d NONE 142 
Hi jsRegexpString      #19ae9a NONE 045 
Hi jsGlobalObjects     #e7558d NONE 142 
Hi jsGlobalNodeObjects #e7558d NONE 142 
Hi jsExceptions        #e7558d NONE 142 
Hi jsBuiltins          #e7558d NONE 142 

" Mail highlighting 
Hi mailQuoted1 #e7558d NONE 142 
Hi mailQuoted2 #d5880b NONE 042 
Hi mailQuoted3 #e7558d NONE 142 
Hi mailQuoted4 #19ae9a NONE 045 
Hi mailQuoted5 #8493f6 NONE 069 
Hi mailQuoted6 #e7558d NONE 142 
Hi mailURL     #8493f6 NONE 069 
Hi mailEmail   #8493f6 NONE 069 

" Markdown highlighting 
Hi markdownCode             #d5880b NONE 042 
Hi markdownError            #aca59a #221f1c 247 234 
Hi markdownCodeBlock        #d5880b NONE 042 
Hi markdownHeadingDelimiter #1bbba6 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #8493f6 NONE 069 
Hi NERDTreeExecFile #aca59a NONE 247 

" PHP highlighting 
Hi phpMemberSelector #aca59a NONE 247 
Hi phpComparison     #aca59a NONE 247 
Hi phpParent         #655e53  NONE 240  
Hi phpVarSelector    #19ae9a NONE 045 

" Python highlighting 
Hi pythonOperator #e7558d NONE 142 
Hi pythonRepeat   #e7558d NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #8493f6 NONE 069 
Hi rubyConstant               #e96396 NONE 142 
Hi rubyInterpolation          #d5880b NONE 042 
Hi rubyInterpolationDelimiter #19ae9a NONE 045 
Hi rubyRegexp                 #19ae9a NONE 045 
Hi rubySymbol                 #d5880b NONE 042 
Hi rubyStringDelimiter        #19ae9a NONE 045 

" SASS highlighting 
Hi sassidChar       #a0acf8 NONE 147 
Hi sassClassChar    #1bbba6 NONE 045 
Hi sassInclude      #e7558d NONE 142 
Hi sassMixing       #e7558d NONE 142 
Hi sassMixinName    #8493f6 NONE 069 
Hi scssAttribute    #655e53  NONE 240  
Hi scssDefinition   #655e53  NONE 240  
Hi scssFunctionName #dc9118 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #d5880b #433f37 042 237 
Hi SignifySignChange #8493f6 #433f37 069 237 
Hi SignifySignDelete #a0acf8 #433f37 147 237 

" Spelling highlighting 
Hi SpellBad   #a0acf8 #221f1c 147 234 undercurl undercurl 
Hi SpellLocal #19ae9a #221f1c 045 234 undercurl undercurl 
Hi SpellCap   #8493f6 #221f1c 069 234 undercurl undercurl 
Hi SpellRare  #e7558d #221f1c 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#aca59a guibg=s:#19ae9a guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#38342e"   
  let g:terminal_color_1  = "#7989f1"  
  let g:terminal_color_2  = "#7b7365"  
  let g:terminal_color_3  = "#877d6e"  
  let g:terminal_color_4  = "#a39b8f"  
  let g:terminal_color_5  = "#aca59a"  
  let g:terminal_color_6  = "#e5e1dc"  
  let g:terminal_color_7  = "#f9f8f6"  
  let g:terminal_color_8  = "#a0acf8"  
  let g:terminal_color_9  = "#1bbba6"  
  let g:terminal_color_10 = "#e7558d"  
  let g:terminal_color_11 = "#7c4e03 " 
  let g:terminal_color_12 = "#19ae9a"  
  let g:terminal_color_13 = "#8493f6"  
  let g:terminal_color_14 = "#e7558d"  
  let g:terminal_color_15 = "#433f37 " 
endif 

