" colorscheme: Base4Tone_Classic_B by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_B_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_B_Dark" 

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
Hi Debug        #95dc18 NONE 147 
Hi Directory    #e78b55 NONE 048 
Hi Error        #211e1c #95dc18 234 
Hi ErrorMsg     #95dc18 #211e1c 147 
Hi Exception    #95dc18 NONE 147 
Hi FoldColumn   #b8a10a #433c38 045 237 
Hi Folded       #85776f #433c38 243 237 
Hi IncSearch    #f5ada3 #7a251a 191 058 
Hi Macro        #95dc18 NONE 147 
Hi MatchParen   #211e1c #85776f 234 243 
Hi ModeMsg      #e47b3f NONE 042 
Hi MoreMsg      #e47b3f NONE 042 
Hi Question     #609504 NONE 063 
Hi Search       #e5dfdc #e76655 253 142 
Hi SpecialKey   #85776f NONE 243 
Hi TooLong      #95dc18 NONE 147 
Hi Underlined   #dcc218 NONE 051 
Hi Ignore       #4e4641  NONE 238  
Hi Visual       NONE #433c38 NONE 237 
Hi VisualNOS    #95dc18 NONE 147 
Hi WarningMsg   #95dc18 NONE 147 
Hi WildMenu     #0d0807 #e76655 000 142
Hi Menu         #0d0807 #e76655 000 142
Hi Scrollbar    #0d0807 #e76655 000 142
Hi Tooltip      #0d0807 #e76655 000 142
Hi Title        #dcc218 NONE 051 NONE NONE 
Hi Conceal      #609504 #211e1c 063 234 
Hi Cursor       #0d0907 #847371 000 243 
Hi NonText      #85776f NONE 243 
Hi Normal       #ffefe6 #211e1c 015 234 
Hi LineNr       #59504a #2c2825  239 235  
Hi SignColumn   #38322e #7a6e66 236 242 
Hi NonText      #85776f NONE 243 
Hi Normal       #ffefe6 #211e1c 015 234 
Hi LineNr       #59504a #2c2825  239 235  
Hi SignColumn   #38322e #7a6e66 243 237 
Hi StatusLine   #645a54 #171411 240 233 NONE NONE 
Hi StatusLineNC #7a6e66 #2c2825 242 235 NONE NONE 
Hi VertSplit    #211e1c #211e1c 234 234 
Hi CursorColumn NONE #433c38 NONE 237 NONE NONE 
Hi CursorLine   NONE #2c2825 NONE 235 NONE NONE 
Hi CursorLineNr #85776f #433c38 243 237 
Hi PMenu        #a29790 #433c38 246 237 
Hi PMenuSel     #433c38 #a29790 237 246 
Hi TabLine      #85776f #433c38 243 237 
Hi TabLineFill  #85776f #433c38 243 237 
Hi TabLineSel   #e47b3f #433c38 042 237 

" Standard syntax highlighting 
Hi Boolean      #c1aa15 NONE 045 
Hi Character    #95dc18 NONE 147 
Hi Comment      #645a54  NONE 240  
Hi Conditional  #e76655 NONE 142 
Hi Constant     #f18c7e NONE 184 
Hi Define       #e76655 NONE 142 
Hi Delimiter    #958204 NONE 039 
Hi Float        #c1aa15 NONE 045 
Hi Function     #c1aa15 NONE 045 
Hi Identifier   #bfb2b0 NONE 249 
Hi Include      #82c115 NONE 069 
Hi Keyword      #e76655 NONE 142 
Hi Label        #e76655 NONE 142 
Hi Number       #fffce6 NONE 015 
Hi Operator     #d2cac6 NONE 251 
Hi PreProc      #e76655 NONE 142 
Hi Repeat       #e76655 NONE 142 
Hi Special      #ee9968 NONE 048 
Hi SpecialChar  #78b80a NONE 069 
Hi Statement    #f0a57a NONE 048 NONE NONE 
Hi StorageClass #e6ca1a NONE 051 
Hi String       #f2b28c NONE 049 
Hi Structure    #e76655 NONE 142 
Hi Tag          #e76655 NONE 142 
Hi Todo         #f5ada3 #5d2e14 191 024 
Hi Type         #f18c7e NONE 184 NONE NONE NONE 
Hi Typedef      #e76655 NONE 142 
Hi Noise        #645a54 NONE  240 

" C highlighting 
Hi cOperator  #b8a10a NONE 045 
Hi cPreCondit #e76655 NONE 142 

" C# highlighting 
Hi csClass                #e76655 NONE 142 
Hi csAttribute            #e76655 NONE 142 
Hi csModifier             #e76655 NONE 142 
Hi csType                 #95dc18 NONE 147 
Hi csUnspecifiedStatement #82c115 NONE 069 
Hi csContextualStatement  #e76655 NONE 142 
Hi csNewDecleration       #95dc18 NONE 147 

" CSS highlighting 
Hi cssBraces     #59504a  NONE 239  
Hi cssClassName  #bfb2b0 NONE 249 
Hi cssColor      #e47b3f NONE 042 
Hi cssImportant  #72ae09 NONE 069 

" Diff highlighting 
Hi DiffAdd     #e47b3f #433c38 042 237 
Hi DiffChange  #85776f #433c38 243 237 
Hi DiffDelete  #95dc18 #433c38 147 237 
Hi DiffText    #82c115 #433c38 069 237 
Hi DiffAdded   #e47b3f #211e1c 042 234 
Hi DiffFile    #95dc18 #211e1c 147 234 
Hi DiffNewFile #e47b3f #211e1c 042 234 
Hi DiffLine    #82c115 #211e1c 069 234 
Hi DiffRemoved #95dc18 #211e1c 147 234 

" Git highlighting 
Hi gitCommitOverflow #95dc18 NONE 147 
Hi gitCommitSummary  #aba19b NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #e47b3f #433c38 042 237 
Hi GitGutterChange #82c115 #433c38 069 237 
Hi GitGutterDelete #95dc18 #433c38 147 237 
Hi GitGutterChangeDelete #e76655 #433c38 142 237 

" XML highlighting 
Hi xmlTag     #645a54 NONE 240  
Hi xmlEndTag  #645a54 NONE 240  
Hi xmlTagName #998c85 NONE 245  

" HTML highlighting 
Hi htmlBold      #dcc218 NONE 051 
Hi htmlItalic    #ebd547 NONE 051 
Hi htmlTag       #645a54  NONE 240  
Hi htmlEndTag    #645a54  NONE 240  
Hi htmlStatement #e78b55 NONE 048 

" JavaScript highlighting 
Hi javaScript          #aba19b NONE 247 
Hi javaScriptBraces    #645a54  NONE 240  
Hi javaScriptNumber    #c1aa15 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #82c115 NONE 069 
Hi jsStatement         #e76655 NONE 142 
Hi jsReturn            #e76655 NONE 142 
Hi jsThis              #95dc18 NONE 147 
Hi jsClassDefinition   #e76655 NONE 142 
Hi jsFunction          #e76655 NONE 142 
Hi jsFuncName          #82c115 NONE 069 
Hi jsFuncCall          #82c115 NONE 069 
Hi jsClassFuncName     #82c115 NONE 069 
Hi jsClassMethodType   #e76655 NONE 142 
Hi jsRegexpString      #b8a10a NONE 045 
Hi jsGlobalObjects     #e76655 NONE 142 
Hi jsGlobalNodeObjects #e76655 NONE 142 
Hi jsExceptions        #e76655 NONE 142 
Hi jsBuiltins          #e76655 NONE 142 

" Mail highlighting 
Hi mailQuoted1 #e76655 NONE 142 
Hi mailQuoted2 #e47b3f NONE 042 
Hi mailQuoted3 #e76655 NONE 142 
Hi mailQuoted4 #b8a10a NONE 045 
Hi mailQuoted5 #82c115 NONE 069 
Hi mailQuoted6 #e76655 NONE 142 
Hi mailURL     #82c115 NONE 069 
Hi mailEmail   #82c115 NONE 069 

" Markdown highlighting 
Hi markdownCode             #e47b3f NONE 042 
Hi markdownError            #aba19b #211e1c 247 234 
Hi markdownCodeBlock        #e47b3f NONE 042 
Hi markdownHeadingDelimiter #c1aa15 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #82c115 NONE 069 
Hi NERDTreeExecFile #aba19b NONE 247 

" PHP highlighting 
Hi phpMemberSelector #aba19b NONE 247 
Hi phpComparison     #aba19b NONE 247 
Hi phpParent         #645a54  NONE 240  
Hi phpVarSelector    #b8a10a NONE 045 

" Python highlighting 
Hi pythonOperator #e76655 NONE 142 
Hi pythonRepeat   #e76655 NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #82c115 NONE 069 
Hi rubyConstant               #e97263 NONE 142 
Hi rubyInterpolation          #e47b3f NONE 042 
Hi rubyInterpolationDelimiter #b8a10a NONE 045 
Hi rubyRegexp                 #b8a10a NONE 045 
Hi rubySymbol                 #e47b3f NONE 042 
Hi rubyStringDelimiter        #b8a10a NONE 045 

" SASS highlighting 
Hi sassidChar       #95dc18 NONE 147 
Hi sassClassChar    #c1aa15 NONE 045 
Hi sassInclude      #e76655 NONE 142 
Hi sassMixing       #e76655 NONE 142 
Hi sassMixinName    #82c115 NONE 069 
Hi scssAttribute    #645a54  NONE 240  
Hi scssDefinition   #645a54  NONE 240  
Hi scssFunctionName #e6854d NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #e47b3f #433c38 042 237 
Hi SignifySignChange #82c115 #433c38 069 237 
Hi SignifySignDelete #95dc18 #433c38 147 237 

" Spelling highlighting 
Hi SpellBad   #95dc18 #211e1c 147 234 undercurl undercurl 
Hi SpellLocal #b8a10a #211e1c 045 234 undercurl undercurl 
Hi SpellCap   #82c115 #211e1c 069 234 undercurl undercurl 
Hi SpellRare  #e76655 #211e1c 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#aba19b guibg=s:#b8a10a guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#38322e"   
  let g:terminal_color_1  = "#78b80a"  
  let g:terminal_color_2  = "#7a6e66"  
  let g:terminal_color_3  = "#85776f"  
  let g:terminal_color_4  = "#a29790"  
  let g:terminal_color_5  = "#aba19b"  
  let g:terminal_color_6  = "#e5dfdc"  
  let g:terminal_color_7  = "#f9f7f6"  
  let g:terminal_color_8  = "#95dc18"  
  let g:terminal_color_9  = "#c1aa15"  
  let g:terminal_color_10 = "#e76655"  
  let g:terminal_color_11 = "#7e3f1b " 
  let g:terminal_color_12 = "#b8a10a"  
  let g:terminal_color_13 = "#82c115"  
  let g:terminal_color_14 = "#e76655"  
  let g:terminal_color_15 = "#433c38 " 
endif 

