" colorscheme: Base4Tone_Classic_R by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_R_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_R_Light" 

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
Hi Debug        #931f4c NONE 057 
Hi Directory    #773cdd NONE 030 
Hi Error        #dfdde4 #931f4c 253 
Hi ErrorMsg     #931f4c #dfdde4 057 
Hi Exception    #931f4c NONE 057 
Hi FoldColumn   #be31d3 #cbc7d1 039 251 
Hi Folded       #8d8994 #cbc7d1 245 251 
Hi IncSearch    #233bd1 #b8c1fa 058 191 
Hi Macro        #931f4c NONE 057 
Hi MatchParen   #dfdde4 #8d8994 253 245 
Hi ModeMsg      #8652e0 NONE 036 
Hi MoreMsg      #8652e0 NONE 036 
Hi Question     #e7558d NONE 069 
Hi Search       #dfdde4 #7989f1 253 142 
Hi SpecialKey   #8d8994 NONE 245 
Hi TooLong      #931f4c NONE 057 
Hi Underlined   #841f93 NONE 020 
Hi Ignore       #c0bcc7  NONE 250  
Hi Visual       NONE #cbc7d1 NONE 251 
Hi VisualNOS    #931f4c NONE 057 
Hi WarningMsg   #931f4c NONE 057 
Hi WildMenu     #f6f6f9 #5468e8 015 106
Hi Menu         #f6f6f9 #5468e8 015 106
Hi Scrollbar    #f6f6f9 #5468e8 015 106
Hi Tooltip      #f6f6f9 #5468e8 015 106
Hi Title        #841f93 NONE 020 NONE NONE 
Hi Conceal      #e7558d #dfdde4 069 253 
Hi Cursor       #f7f6f9 #a6a8b5 015 248 
Hi NonText      #8d8994 NONE 245 
Hi Normal       #110623 #eae8ed 000 254 
Hi LineNr       #b6b2bd #dfdde4  249 253  
Hi SignColumn   #cbc7d1 #98949e 251 246 
Hi StatusLine   #aca8b3 #dfdde4 248 253 NONE NONE 
Hi StatusLineNC #98949e #d5d2db 246 252 NONE NONE 
Hi VertSplit    #eae8ed #eae8ed 254 254 
Hi CursorColumn NONE #3c3a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #dfdde4 NONE 253 NONE NONE 
Hi CursorLineNr #a29ea9 #d5d2db 247 252 
Hi PMenu        #6f6b76 #dfdde4 242 253 
Hi PMenuSel     #c0bcc7 #dfdde4 250 253 
Hi TabLine      #8d8994 #dfdde4 245 253 
Hi TabLineFill  #8d8994 #dfdde4 245 253 
Hi TabLineSel   #8652e0 #dfdde4 036 253 

" Standard syntax highlighting 
Hi Boolean      #b52bca NONE 021 
Hi Character    #931f4c NONE 057 
Hi Comment      #aca8b3  NONE 248  
Hi Conditional  #5468e8 NONE 106 
Hi Constant     #364ddd NONE 100 
Hi Define       #5468e8 NONE 106 
Hi Delimiter    #d355e7 NONE 045 
Hi Float        #b52bca NONE 021 
Hi Function     #b52bca NONE 021 
Hi Identifier   #4a4c59 NONE 239 
Hi Include      #bd2861 NONE 000 
Hi Keyword      #5468e8 NONE 106 
Hi Label        #5468e8 NONE 106 
Hi Number       #130415 NONE 017 
Hi Operator     #323036 NONE 236 
Hi PreProc      #5468e8 NONE 106 
Hi Repeat       #5468e8 NONE 106 
Hi Special      #6b2bda NONE 030 
Hi SpecialChar  #d22d6c NONE 063 
Hi Statement    #531fad NONE 022 NONE NONE 
Hi StorageClass #661872 NONE 019 
Hi String       #491b98 NONE 024 
Hi Structure    #5468e8 NONE 106 
Hi Tag          #5468e8 NONE 106 
Hi Todo         #1f33b7 #cdb4f9 058 049 
Hi Type         #364ddd NONE 100 NONE NONE NONE 
Hi Typedef      #5468e8 NONE 106 
Hi Noise        #aca8b3 NONE  248 

" C highlighting 
Hi cOperator  #be31d3 NONE 039 
Hi cPreCondit #5468e8 NONE 106 

" C# highlighting 
Hi csClass                #5468e8 NONE 106 
Hi csAttribute            #5468e8 NONE 106 
Hi csModifier             #5468e8 NONE 106 
Hi csType                 #931f4c NONE 057 
Hi csUnspecifiedStatement #bd2861 NONE 000 
Hi csContextualStatement  #5468e8 NONE 106 
Hi csNewDecleration       #931f4c NONE 057 

" CSS highlighting 
Hi cssBraces     #b6b2bd  NONE 249  
Hi cssClassName  #4a4c59 NONE 239 
Hi cssColor      #8652e0 NONE 036 
Hi cssImportant  #d53975 NONE 063 

" Diff highlighting 
Hi DiffAdd     #8652e0 #c0bcc7 036 250 
Hi DiffChange  #8d8994 #c0bcc7 245 250 
Hi DiffDelete  #931f4c #c0bcc7 057 250 
Hi DiffText    #bd2861 #c0bcc7 000 250 
Hi DiffAdded   #8652e0 #eae8ed 036 254 
Hi DiffFile    #931f4c #eae8ed 057 254 
Hi DiffNewFile #8652e0 #eae8ed 036 254 
Hi DiffLine    #bd2861 #eae8ed 000 254 
Hi DiffRemoved #931f4c #eae8ed 057 254 

" Git highlighting 
Hi gitCommitOverflow #931f4c NONE 057 
Hi gitCommitSummary  #65616b NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #8652e0 #c0bcc7 036 250 
Hi GitGutterChange #bd2861 #c0bcc7 000 250 
Hi GitGutterDelete #931f4c #c0bcc7 057 250 
Hi GitGutterChangeDelete #5468e8 #c0bcc7 106 250 

" XML highlighting 
Hi xmlTag     #aca8b3 NONE 248  
Hi xmlEndTag  #aca8b3 NONE 248  
Hi xmlTagName #797481 NONE 243  

" HTML highlighting 
Hi htmlBold      #841f93 NONE 020 
Hi htmlItalic    #53145d NONE 018 
Hi htmlTag       #aca8b3  NONE 248  
Hi htmlEndTag    #aca8b3  NONE 248  
Hi htmlStatement #773cdd NONE 030 

" JavaScript highlighting 
Hi javaScript          #65616b NONE 241 
Hi javaScriptBraces    #aca8b3  NONE 248  
Hi javaScriptNumber    #b52bca NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #bd2861 NONE 000 
Hi jsStatement         #5468e8 NONE 106 
Hi jsReturn            #5468e8 NONE 106 
Hi jsThis              #931f4c NONE 057 
Hi jsClassDefinition   #5468e8 NONE 106 
Hi jsFunction          #5468e8 NONE 106 
Hi jsFuncName          #bd2861 NONE 000 
Hi jsFuncCall          #bd2861 NONE 000 
Hi jsClassFuncName     #bd2861 NONE 000 
Hi jsClassMethodType   #5468e8 NONE 106 
Hi jsRegexpString      #be31d3 NONE 039 
Hi jsGlobalObjects     #5468e8 NONE 106 
Hi jsGlobalNodeObjects #5468e8 NONE 106 
Hi jsExceptions        #5468e8 NONE 106 
Hi jsBuiltins          #5468e8 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #5468e8 NONE 106 
Hi mailQuoted2 #8652e0 NONE 036 
Hi mailQuoted3 #5468e8 NONE 106 
Hi mailQuoted4 #be31d3 NONE 039 
Hi mailQuoted5 #bd2861 NONE 000 
Hi mailQuoted6 #5468e8 NONE 106 
Hi mailURL     #bd2861 NONE 000 
Hi mailEmail   #bd2861 NONE 000 

" Markdown highlighting 
Hi markdownCode             #8652e0 NONE 036 
Hi markdownError            #65616b #dfdde4 241 253 
Hi markdownCodeBlock        #8652e0 NONE 036 
Hi markdownHeadingDelimiter #b52bca NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #bd2861 NONE 000 
Hi NERDTreeExecFile #65616b NONE 241 

" PHP highlighting 
Hi phpMemberSelector #65616b NONE 241 
Hi phpComparison     #65616b NONE 241 
Hi phpParent         #aca8b3  NONE 248  
Hi phpVarSelector    #be31d3 NONE 039 

" Python highlighting 
Hi pythonOperator #5468e8 NONE 106 
Hi pythonRepeat   #5468e8 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #bd2861 NONE 000 
Hi rubyConstant               #4b60e7 NONE 100 
Hi rubyInterpolation          #8652e0 NONE 036 
Hi rubyInterpolationDelimiter #be31d3 NONE 039 
Hi rubyRegexp                 #be31d3 NONE 039 
Hi rubySymbol                 #8652e0 NONE 036 
Hi rubyStringDelimiter        #be31d3 NONE 039 

" SASS highlighting 
Hi sassidChar       #931f4c NONE 057 
Hi sassClassChar    #b52bca NONE 021 
Hi sassInclude      #5468e8 NONE 106 
Hi sassMixing       #5468e8 NONE 106 
Hi sassMixinName    #bd2861 NONE 000 
Hi scssAttribute    #aca8b3  NONE 248  
Hi scssDefinition   #aca8b3  NONE 248  
Hi scssFunctionName #8049df NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #8652e0 #c0bcc7 036 250 
Hi SignifySignChange #bd2861 #c0bcc7 000 250 
Hi SignifySignDelete #931f4c #c0bcc7 057 250 

" Spelling highlighting 
Hi SpellBad   #931f4c #eae8ed 057 254 undercurl undercurl 
Hi SpellLocal #be31d3 #eae8ed 039 254 undercurl undercurl 
Hi SpellCap   #bd2861 #eae8ed 000 254 undercurl undercurl 
Hi SpellRare  #5468e8 #eae8ed 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#65616b guibg=s:#be31d3 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#cbc7d1"   
  let g:terminal_color_1  = "#d22d6c"  
  let g:terminal_color_2  = "#98949e"  
  let g:terminal_color_3  = "#8d8994"  
  let g:terminal_color_4  = "#6f6b76"  
  let g:terminal_color_5  = "#65616b"  
  let g:terminal_color_6  = "#1e1d20"  
  let g:terminal_color_7  = "#09070d"  
  let g:terminal_color_8  = "#931f4c"  
  let g:terminal_color_9  = "#b52bca"  
  let g:terminal_color_10 = "#5468e8"  
  let g:terminal_color_11 = "#b792f6 " 
  let g:terminal_color_12 = "#be31d3"  
  let g:terminal_color_13 = "#bd2861"  
  let g:terminal_color_14 = "#5468e8"  
  let g:terminal_color_15 = "#cbc7d1 " 
endif 

