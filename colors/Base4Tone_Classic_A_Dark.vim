" colorscheme: Base4Tone_Classic_A by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_A_Dark.vim

" Theme setup 
set background=dark 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_A_Dark" 

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
Hi Debug        #c5dc18 NONE 147 
Hi Directory    #eb8275 NONE 048 
Hi Error        #211d1c #c5dc18 234 
Hi ErrorMsg     #c5dc18 #211d1c 147 
Hi Exception    #c5dc18 NONE 147 
Hi FoldColumn   #d5880b #423938 045 237 
Hi Folded       #847371 #423938 243 237 
Hi IncSearch    #f5a3d7 #721851 191 058 
Hi Macro        #c5dc18 NONE 147 
Hi MatchParen   #211d1c #847371 234 243 
Hi ModeMsg      #e76655 NONE 042 
Hi MoreMsg      #e76655 NONE 042 
Hi Question     #849504 NONE 063 
Hi Search       #e5dddc #e755b1 253 142 
Hi SpecialKey   #847371 NONE 243 
Hi TooLong      #c5dc18 NONE 147 
Hi Underlined   #e8a02c NONE 051 
Hi Ignore       #4d4342  NONE 238  
Hi Visual       NONE #423938 NONE 237 
Hi VisualNOS    #c5dc18 NONE 147 
Hi WarningMsg   #c5dc18 NONE 147 
Hi WildMenu     #0d070b #e755b1 000 142
Hi Menu         #0d070b #e755b1 000 142
Hi Scrollbar    #0d070b #e755b1 000 142
Hi Tooltip      #0d070b #e755b1 000 142
Hi Title        #e8a02c NONE 051 NONE NONE 
Hi Conceal      #849504 #211d1c 063 234 
Hi Cursor       #0d0807 #81747c 000 243 
Hi NonText      #847371 NONE 243 
Hi Normal       #ffe8e6 #211d1c 015 234 
Hi LineNr       #584d4b #2c2626  239 235  
Hi SignColumn   #37302f #796967 236 242 
Hi Cursor       #0d0807 #81747c 000 036 
Hi NonText      #847371 NONE 243 
Hi Normal       #ffe8e6 #211d1c 015 234 
Hi LineNr       #584d4b #2c2626  239 235  
Hi SignColumn   #37302f #796967 243 237 
Hi StatusLine   #635654 #171211 240 233 NONE NONE 
Hi StatusLineNC #796967 #2c2626 242 235 NONE NONE 
Hi VertSplit    #211d1c #211d1c 234 234 
Hi CursorColumn NONE #423938 NONE 237 NONE NONE 
Hi CursorLine   NONE #2c2626 NONE 235 NONE NONE 
Hi CursorLineNr #847371 #423938 243 237 
Hi PMenu        #a19391 #423938 246 237 
Hi PMenuSel     #423938 #a19391 237 246 
Hi TabLine      #847371 #423938 243 237 
Hi TabLineFill  #847371 #423938 243 237 
Hi TabLineSel   #e76655 #423938 042 237 

" Standard syntax highlighting 
Hi Boolean      #dc9118 NONE 045 
Hi Character    #c5dc18 NONE 147 
Hi Comment      #635654  NONE 240  
Hi Conditional  #e755b1 NONE 142 
Hi Constant     #f17ec7 NONE 184 
Hi Define       #e755b1 NONE 142 
Hi Delimiter    #ae6d04 NONE 039 
Hi Float        #dc9118 NONE 045 
Hi Function     #dc9118 NONE 045 
Hi Identifier   #bdb2b9 NONE 249 
Hi Include      #adc115 NONE 069 
Hi Keyword      #e755b1 NONE 142 
Hi Label        #e755b1 NONE 142 
Hi Number       #fff5e6 NONE 015 
Hi Operator     #d2c7c6 NONE 251 
Hi PreProc      #e755b1 NONE 142 
Hi Repeat       #e755b1 NONE 142 
Hi Special      #f18c7e NONE 048 
Hi SpecialChar  #a4b80a NONE 069 
Hi Statement    #f39c91 NONE 048 NONE NONE 
Hi StorageClass #eaa83e NONE 051 
Hi String       #f5ada3 NONE 049 
Hi Structure    #e755b1 NONE 142 
Hi Tag          #e755b1 NONE 142 
Hi Todo         #f5a3d7 #651f15 191 024 
Hi Type         #f17ec7 NONE 184 NONE NONE NONE 
Hi Typedef      #e755b1 NONE 142 
Hi Noise        #635654 NONE  240 

" C highlighting 
Hi cOperator  #d5880b NONE 045 
Hi cPreCondit #e755b1 NONE 142 

" C# highlighting 
Hi csClass                #e755b1 NONE 142 
Hi csAttribute            #e755b1 NONE 142 
Hi csModifier             #e755b1 NONE 142 
Hi csType                 #c5dc18 NONE 147 
Hi csUnspecifiedStatement #adc115 NONE 069 
Hi csContextualStatement  #e755b1 NONE 142 
Hi csNewDecleration       #c5dc18 NONE 147 

" CSS highlighting 
Hi cssBraces     #584d4b  NONE 239  
Hi cssClassName  #bdb2b9 NONE 249 
Hi cssColor      #e76655 NONE 042 
Hi cssImportant  #9bae09 NONE 069 

" Diff highlighting 
Hi DiffAdd     #e76655 #423938 042 237 
Hi DiffChange  #847371 #423938 243 237 
Hi DiffDelete  #c5dc18 #423938 147 237 
Hi DiffText    #adc115 #423938 069 237 
Hi DiffAdded   #e76655 #211d1c 042 234 
Hi DiffFile    #c5dc18 #211d1c 147 234 
Hi DiffNewFile #e76655 #211d1c 042 234 
Hi DiffLine    #adc115 #211d1c 069 234 
Hi DiffRemoved #c5dc18 #211d1c 147 234 

" Git highlighting 
Hi gitCommitOverflow #c5dc18 NONE 147 
Hi gitCommitSummary  #ab9e9c NONE 247 

" GitGutter highlighting 
Hi GitGutterAdd    #e76655 #423938 042 237 
Hi GitGutterChange #adc115 #423938 069 237 
Hi GitGutterDelete #c5dc18 #423938 147 237 
Hi GitGutterChangeDelete #e755b1 #423938 142 237 

" XML highlighting 
Hi xmlTag     #635654 NONE 240  
Hi xmlEndTag  #635654 NONE 240  
Hi xmlTagName #988886 NONE 245  

" HTML highlighting 
Hi htmlBold      #e8a02c NONE 051 
Hi htmlItalic    #eeb863 NONE 051 
Hi htmlTag       #635654  NONE 240  
Hi htmlEndTag    #635654  NONE 240  
Hi htmlStatement #eb8275 NONE 048 

" JavaScript highlighting 
Hi javaScript          #ab9e9c NONE 247 
Hi javaScriptBraces    #635654  NONE 240  
Hi javaScriptNumber    #dc9118 NONE 045 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #adc115 NONE 069 
Hi jsStatement         #e755b1 NONE 142 
Hi jsReturn            #e755b1 NONE 142 
Hi jsThis              #c5dc18 NONE 147 
Hi jsClassDefinition   #e755b1 NONE 142 
Hi jsFunction          #e755b1 NONE 142 
Hi jsFuncName          #adc115 NONE 069 
Hi jsFuncCall          #adc115 NONE 069 
Hi jsClassFuncName     #adc115 NONE 069 
Hi jsClassMethodType   #e755b1 NONE 142 
Hi jsRegexpString      #d5880b NONE 045 
Hi jsGlobalObjects     #e755b1 NONE 142 
Hi jsGlobalNodeObjects #e755b1 NONE 142 
Hi jsExceptions        #e755b1 NONE 142 
Hi jsBuiltins          #e755b1 NONE 142 

" Mail highlighting 
Hi mailQuoted1 #e755b1 NONE 142 
Hi mailQuoted2 #e76655 NONE 042 
Hi mailQuoted3 #e755b1 NONE 142 
Hi mailQuoted4 #d5880b NONE 045 
Hi mailQuoted5 #adc115 NONE 069 
Hi mailQuoted6 #e755b1 NONE 142 
Hi mailURL     #adc115 NONE 069 
Hi mailEmail   #adc115 NONE 069 

" Markdown highlighting 
Hi markdownCode             #e76655 NONE 042 
Hi markdownError            #ab9e9c #211d1c 247 234 
Hi markdownCodeBlock        #e76655 NONE 042 
Hi markdownHeadingDelimiter #dc9118 NONE 045 

" NERDTree highlighting 
Hi NERDTreeDirSlash #adc115 NONE 069 
Hi NERDTreeExecFile #ab9e9c NONE 247 

" PHP highlighting 
Hi phpMemberSelector #ab9e9c NONE 247 
Hi phpComparison     #ab9e9c NONE 247 
Hi phpParent         #635654  NONE 240  
Hi phpVarSelector    #d5880b NONE 045 

" Python highlighting 
Hi pythonOperator #e755b1 NONE 142 
Hi pythonRepeat   #e755b1 NONE 142 

" Ruby highlighting 
Hi rubyAttribute              #adc115 NONE 069 
Hi rubyConstant               #e963b8 NONE 142 
Hi rubyInterpolation          #e76655 NONE 042 
Hi rubyInterpolationDelimiter #d5880b NONE 045 
Hi rubyRegexp                 #d5880b NONE 045 
Hi rubySymbol                 #e76655 NONE 042 
Hi rubyStringDelimiter        #d5880b NONE 045 

" SASS highlighting 
Hi sassidChar       #c5dc18 NONE 147 
Hi sassClassChar    #dc9118 NONE 045 
Hi sassInclude      #e755b1 NONE 142 
Hi sassMixing       #e755b1 NONE 142 
Hi sassMixinName    #adc115 NONE 069 
Hi scssAttribute    #635654  NONE 240  
Hi scssDefinition   #635654  NONE 240  
Hi scssFunctionName #e97263 NONE 042 

" Signify highlighting 
Hi SignifySignAdd    #e76655 #423938 042 237 
Hi SignifySignChange #adc115 #423938 069 237 
Hi SignifySignDelete #c5dc18 #423938 147 237 

" Spelling highlighting 
Hi SpellBad   #c5dc18 #211d1c 147 234 undercurl undercurl 
Hi SpellLocal #d5880b #211d1c 045 234 undercurl undercurl 
Hi SpellCap   #adc115 #211d1c 069 234 undercurl undercurl 
Hi SpellRare  #e755b1 #211d1c 142 234 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=246 ctermbg=30 guifg=s:#ab9e9c guibg=s:#d5880b guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#37302f"   
  let g:terminal_color_1  = "#a4b80a"  
  let g:terminal_color_2  = "#796967"  
  let g:terminal_color_3  = "#847371"  
  let g:terminal_color_4  = "#a19391"  
  let g:terminal_color_5  = "#ab9e9c"  
  let g:terminal_color_6  = "#e5dddc"  
  let g:terminal_color_7  = "#f9f6f6"  
  let g:terminal_color_8  = "#c5dc18"  
  let g:terminal_color_9  = "#dc9118"  
  let g:terminal_color_10 = "#e755b1"  
  let g:terminal_color_11 = "#87291d " 
  let g:terminal_color_12 = "#d5880b"  
  let g:terminal_color_13 = "#adc115"  
  let g:terminal_color_14 = "#e755b1"  
  let g:terminal_color_15 = "#423938 " 
endif 

