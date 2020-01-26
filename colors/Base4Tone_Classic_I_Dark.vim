" colorscheme: Base4Tone_Classic_I by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_I_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_I_Dark" 

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
Hi Directory    #24cc38 NONE 048 
Hi Error        #1d201d #a0acf8 234 
Hi ErrorMsg     #a0acf8 #1d201d 147 
Hi Exception    #a0acf8 NONE 147 
Hi FoldColumn   #22acbf #3a403b 045 237 
Hi Folded       #748176 #3a403b 243 237 
Hi IncSearch    #dced5a #4f5a02 191 058 
Hi Macro        #a0acf8 NONE 147 
Hi MatchParen   #2bda3f #4c4e41 048 238 
Hi ModeMsg      #20b632 NONE 042 
Hi MoreMsg      #20b632 NONE 042 
Hi Question     #5468e8 NONE 063 
Hi Search       #dde3de #a4b80a 253 142 
Hi SpecialKey   #748176 NONE 243 
Hi TooLong      #a0acf8 NONE 147 
Hi Underlined   #3ccadd NONE 051 
Hi Ignore       #444b45  NONE 238  
Hi Visual       NONE #3a403b NONE 237 
Hi VisualNOS    #a0acf8 NONE 147 
Hi WarningMsg   #a0acf8 NONE 147 
Hi WildMenu     #0d0d07 #a4b80a 000 142
Hi Menu         #0d0d07 #a4b80a 000 142
Hi Scrollbar    #0d0d07 #a4b80a 000 142
Hi Tooltip      #0d0d07 #a4b80a 000 142
Hi Title        #3ccadd NONE 051 NONE NONE 
Hi Conceal      #5468e8 #1d201d 063 234 
Hi Cursor       #032a08 #83856f 000 243 
Hi NonText      #748176 NONE 243 
Hi Normal       #ebffed #1d201d 015 234 
Hi LineNr       #4e564e #272b27  239 235  
Hi SignColumn   #303631 #6b766c 236 242 
Hi NonText      #748176 NONE 243 
Hi Normal       #ebffed #1d201d 015 234 
Hi LineNr       #4e564e #272b27  239 235  
Hi SignColumn   #303631 #6b766c 243 237 
Hi StatusLine   #576058 #121713 240 233 NONE NONE 
Hi StatusLineNC #6b766c #272b27 242 235 NONE NONE 
Hi VertSplit    #1d201d #1d201d 234 234 
Hi CursorColumn NONE #3a403b NONE 237 NONE NONE 
Hi CursorLine   NONE #272b27 NONE 235 NONE NONE 
Hi CursorLineNr #748176 #3a403b 243 237 
Hi PMenu        #949e95 #3a403b 246 237 
Hi PMenuSel     #3a403b #949e95 237 246 
Hi TabLine      #748176 #3a403b 243 237 
Hi TabLineFill  #748176 #3a403b 243 237 
Hi TabLineSel   #20b632 #3a403b 042 237 

" Standard syntax highlighting 
Hi Boolean      #23b4c7 NONE 045 
Hi Character    #a0acf8 NONE 147 
Hi Comment      #576058  NONE 240  
Hi Conditional  #a4b80a NONE 142 
Hi Constant     #c5dc18 NONE 184 
Hi Define       #a4b80a NONE 142 
Hi Delimiter    #048495 NONE 039 
Hi Float        #23b4c7 NONE 045 
Hi Function     #23b4c7 NONE 045 
Hi Identifier   #bdbfb0 NONE 249 
Hi Include      #8493f6 NONE 069 
Hi Keyword      #a4b80a NONE 142 
Hi Label        #a4b80a NONE 142 
Hi Number       #ebfdff NONE 015 
Hi Operator     #c8d0c9 NONE 251 
Hi PreProc      #a4b80a NONE 142 
Hi Repeat       #a4b80a NONE 142 
Hi Special      #2bda3f NONE 048 
Hi SpecialChar  #7989f1 NONE 069 
Hi Statement    #3cdd4f NONE 048 NONE NONE 
Hi StorageClass #5ad2e2 NONE 051 
Hi String       #67e476 NONE 049 
Hi Structure    #a4b80a NONE 142 
Hi Tag          #a4b80a NONE 142 
Hi Todo         #dced5a #064b0e 191 024 
Hi Type         #c5dc18 NONE 184 NONE NONE NONE 
Hi Typedef      #a4b80a NONE 142 
Hi Noise        #576058 NONE  240 

" C highlighting 
Hi cOperator  #22acbf NONE 045 
Hi cPreCondit #a4b80a NONE 142 

" C# highlighting 
Hi csClass                #a4b80a NONE 142 
Hi csAttribute            #a4b80a NONE 142 
Hi csModifier             #a4b80a NONE 142 
Hi csType                 #a0acf8 NONE 147 
Hi csUnspecifiedStatement #8493f6 NONE 069 
Hi csContextualStatement  #a4b80a NONE 142 
Hi csNewDecleration       #a0acf8 NONE 147 

" CSS highlighting 
Hi cssBraces     #4e564e  NONE 239  
Hi cssClassName  #bdbfb0 NONE 249 
Hi cssColor      #20b632 NONE 042 
Hi cssImportant  #7081f0 NONE 069 

" Diff highlighting 
Hi DiffAdd     #20b632 #3a403b 042 237 
Hi DiffChange  #748176 #3a403b 243 237 
Hi DiffDelete  #a0acf8 #3a403b 147 237 
Hi DiffText    #8493f6 #3a403b 069 237 
Hi DiffAdded   #20b632 #1d201d 042 234 
Hi DiffFile    #a0acf8 #1d201d 147 234 
Hi DiffNewFile #20b632 #1d201d 042 234 
Hi DiffLine    #8493f6 #1d201d 069 234 
Hi DiffRemoved #a0acf8 #1d201d 147 234 

" Git highlighting 
Hi gitCommitOverflow #a0acf8 NONE 147 
Hi gitCommitSummary  #9fa8a0 NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #20b632 #3a403b 042 237 
Hi GitGutterChange #8493f6 #3a403b 069 237 
Hi GitGutterDelete #a0acf8 #3a403b 147 237 
Hi GitGutterChangeDelete #a4b80a #3a403b 142 237 

" XML highlighting 
Hi xmlTag     #576058 NONE 240  
Hi xmlEndTag  #576058 NONE 240  
Hi xmlTagName #89948a NONE 245  

" HTML highlighting 
Hi htmlBold      #3ccadd NONE 051 
Hi htmlItalic    #7ddce8 NONE 051 
Hi htmlTag       #576058  NONE 240  
Hi htmlEndTag    #576058  NONE 240  
Hi htmlStatement #24cc38 NONE 048 

" JavaScript highlighting 
Hi javaScript          #9fa8a0 NONE 247 
Hi javaScriptBraces    #576058  NONE 240  
Hi javaScriptNumber    #23b4c7 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #8493f6 NONE 069 
Hi jsStatement         #a4b80a NONE 142 
Hi jsReturn            #a4b80a NONE 142 
Hi jsThis              #a0acf8 NONE 147 
Hi jsClassDefinition   #a4b80a NONE 142 
Hi jsFunction          #a4b80a NONE 142 
Hi jsFuncName          #8493f6 NONE 069 
Hi jsFuncCall          #8493f6 NONE 069 
Hi jsClassFuncName     #8493f6 NONE 069 
Hi jsClassMethodType   #a4b80a NONE 142 
Hi jsRegexpString      #22acbf NONE 045 
Hi jsGlobalObjects     #a4b80a NONE 142 
Hi jsGlobalNodeObjects #a4b80a NONE 142 
Hi jsExceptions        #a4b80a NONE 142 
Hi jsBuiltins          #a4b80a NONE 142 

" Mail highlighting 
Hi mailQuoted1 #a4b80a NONE 142 
Hi mailQuoted2 #20b632 NONE 042 
Hi mailQuoted3 #a4b80a NONE 142 
Hi mailQuoted4 #22acbf NONE 045 
Hi mailQuoted5 #8493f6 NONE 069 
Hi mailQuoted6 #a4b80a NONE 142 
Hi mailURL     #8493f6 NONE 069 
Hi mailEmail   #8493f6 NONE 069 

" Markdown highlighting 
Hi markdownCode             #20b632 NONE 042 
Hi markdownError            #9fa8a0 #1d201d 247 234 
Hi markdownCodeBlock        #20b632 NONE 042 
Hi markdownHeadingDelimiter #23b4c7 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #8493f6 NONE 069 
Hi NERDTreeExecFile #9fa8a0 NONE 247 

" PHP highlighting 
Hi phpMemberSelector #9fa8a0 NONE 247 
Hi phpComparison     #9fa8a0 NONE 247 
Hi phpParent         #576058  NONE 240  
Hi phpVarSelector    #22acbf NONE 045 

" Python highlighting 
Hi pythonOperator #a4b80a NONE 142 
Hi pythonRepeat   #a4b80a NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #8493f6 NONE 069 
Hi rubyConstant               #adc115 NONE 142 
Hi rubyInterpolation          #20b632 NONE 042 
Hi rubyInterpolationDelimiter #22acbf NONE 045 
Hi rubyRegexp                 #22acbf NONE 045 
Hi rubySymbol                 #20b632 NONE 042 
Hi rubyStringDelimiter        #22acbf NONE 045 

" SASS highlighting 
Hi sassidChar       #a0acf8 NONE 147 
Hi sassClassChar    #23b4c7 NONE 045 
Hi sassInclude      #a4b80a NONE 142 
Hi sassMixing       #a4b80a NONE 142 
Hi sassMixinName    #8493f6 NONE 069 
Hi scssAttribute    #576058  NONE 240  
Hi scssDefinition   #576058  NONE 240  
Hi scssFunctionName #22bf34 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #20b632 #3a403b 042 237 
Hi SignifySignChange #8493f6 #3a403b 069 237 
Hi SignifySignDelete #a0acf8 #3a403b 147 237 

" Spelling highlighting 
Hi SpellBad   #a0acf8 #1d201d 147 234 undercurl undercurl 
Hi SpellLocal #22acbf #1d201d 045 234 undercurl undercurl 
Hi SpellCap   #8493f6 #1d201d 069 234 undercurl undercurl 
Hi SpellRare  #a4b80a #1d201d 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#9fa8a0 guibg=s:#22acbf guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#303631"   
  let g:terminal_color_1  = "#7989f1"  
  let g:terminal_color_2  = "#6b766c"  
  let g:terminal_color_3  = "#748176"  
  let g:terminal_color_4  = "#949e95"  
  let g:terminal_color_5  = "#9fa8a0"  
  let g:terminal_color_6  = "#dde3de"  
  let g:terminal_color_7  = "#f6f9f6"  
  let g:terminal_color_8  = "#a0acf8"  
  let g:terminal_color_9  = "#23b4c7"  
  let g:terminal_color_10 = "#a4b80a"  
  let g:terminal_color_11 = "#086814 " 
  let g:terminal_color_12 = "#22acbf"  
  let g:terminal_color_13 = "#8493f6"  
  let g:terminal_color_14 = "#a4b80a"  
  let g:terminal_color_15 = "#3a403b " 
endif 

