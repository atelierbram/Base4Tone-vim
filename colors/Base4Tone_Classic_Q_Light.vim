" colorscheme: Base4Tone_Classic_Q by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_Q_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_Q_Light" 

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
Hi Debug        #8f1e66 NONE 057 
Hi Directory    #5a49df NONE 030 
Hi Error        #dedde4 #8f1e66 253 
Hi ErrorMsg     #8f1e66 #dedde4 057 
Hi Exception    #8f1e66 NONE 057 
Hi FoldColumn   #9e42d7 #c8c7d1 039 251 
Hi Folded       #8a8994 #c8c7d1 245 251 
Hi IncSearch    #1249a1 #a8caff 058 191 
Hi Macro        #8f1e66 NONE 057 
Hi MatchParen   #dedde4 #8a8994 253 245 
Hi ModeMsg      #6e5fe3 NONE 036 
Hi MoreMsg      #6e5fe3 NONE 036 
Hi Question     #e755b1 NONE 069 
Hi Search       #dedde4 #5a96f6 253 142 
Hi SpecialKey   #8a8994 NONE 245 
Hi TooLong      #8f1e66 NONE 057 
Hi Underlined   #7524a8 NONE 020 
Hi Ignore       #bebcc7  NONE 250  
Hi Visual       NONE #c8c7d1 NONE 251 
Hi VisualNOS    #8f1e66 NONE 057 
Hi WarningMsg   #8f1e66 NONE 057 
Hi WildMenu     #f6f7f9 #3077e8 015 106
Hi Menu         #f6f7f9 #3077e8 015 106
Hi Scrollbar    #f6f7f9 #3077e8 015 106
Hi Tooltip      #f6f7f9 #3077e8 015 106
Hi Title        #7524a8 NONE 020 NONE NONE 
Hi Conceal      #e755b1 #dedde4 069 253 
Hi Cursor       #f6f6f9 #7d8ba1 015 245 
Hi NonText      #8a8994 NONE 245 
Hi Normal       #0d0830 #dedde4 000 253 
Hi LineNr       #b3b2bd #d3d2db  249 252  
Hi SignColumn   #c8c7d1 #95949e 251 246 
Hi StatusLine   #a9a8b3 #e9e8ed 248 254 NONE NONE 
Hi StatusLineNC #95949e #d3d2db 246 252 NONE NONE 
Hi VertSplit    #dedde4 #dedde4 253 253 
Hi CursorColumn NONE #3b3a40 NONE 237 NONE NONE 
Hi CursorLine   NONE #d3d2db NONE 252 NONE NONE 
Hi CursorLineNr #8a8994 #bebcc7 245 250 
Hi PMenu        #6c6b76 #bebcc7 242 250 
Hi PMenuSel     #bebcc7 #6c6b76 250 242 
Hi TabLine      #8a8994 #bebcc7 245 250 
Hi TabLineFill  #8a8994 #bebcc7 245 250 
Hi TabLineSel   #6e5fe3 #bebcc7 036 250 

" Standard syntax highlighting 
Hi Boolean      #9939d5 NONE 021 
Hi Character    #8f1e66 NONE 057 
Hi Comment      #a9a8b3  NONE 248  
Hi Conditional  #3077e8 NONE 106 
Hi Constant     #175dcf NONE 100 
Hi Define       #3077e8 NONE 106 
Hi Delimiter    #b35ee8 NONE 045 
Hi Float        #9939d5 NONE 021 
Hi Function     #9939d5 NONE 021 
Hi Identifier   #454f5f NONE 239 
Hi Include      #bd2887 NONE 000 
Hi Keyword      #3077e8 NONE 106 
Hi Label        #3077e8 NONE 106 
Hi Number       #120519 NONE 017 
Hi Operator     #313036 NONE 236 
Hi PreProc      #3077e8 NONE 106 
Hi Repeat       #3077e8 NONE 106 
Hi Special      #4b38dc NONE 030 
Hi SpecialChar  #ce2c93 NONE 063 
Hi Statement    #3925d0 NONE 022 NONE NONE 
Hi StorageClass #581b7e NONE 019 
Hi String       #3321ba NONE 024 
Hi Structure    #3077e8 NONE 106 
Hi Tag          #3077e8 NONE 106 
Hi Todo         #0f3e8a #c0b8f9 058 049 
Hi Type         #175dcf NONE 100 NONE NONE NONE 
Hi Typedef      #3077e8 NONE 106 
Hi Noise        #a9a8b3 NONE  248 

" C highlighting 
Hi cOperator  #9e42d7 NONE 039 
Hi cPreCondit #3077e8 NONE 106 

" C# highlighting 
Hi csClass                #3077e8 NONE 106 
Hi csAttribute            #3077e8 NONE 106 
Hi csModifier             #3077e8 NONE 106 
Hi csType                 #8f1e66 NONE 057 
Hi csUnspecifiedStatement #bd2887 NONE 000 
Hi csContextualStatement  #3077e8 NONE 106 
Hi csNewDecleration       #8f1e66 NONE 057 

" CSS highlighting 
Hi cssBraces     #b3b2bd  NONE 249  
Hi cssClassName  #454f5f NONE 239 
Hi cssColor      #6e5fe3 NONE 036 
Hi cssImportant  #d4359a NONE 063 

" Diff highlighting 
Hi DiffAdd     #6e5fe3 #bebcc7 036 250 
Hi DiffChange  #8a8994 #bebcc7 245 250 
Hi DiffDelete  #8f1e66 #bebcc7 057 250 
Hi DiffText    #bd2887 #bebcc7 000 250 
Hi DiffAdded   #6e5fe3 #e9e8ed 036 254 
Hi DiffFile    #8f1e66 #e9e8ed 057 254 
Hi DiffNewFile #6e5fe3 #e9e8ed 036 254 
Hi DiffLine    #bd2887 #e9e8ed 000 254 
Hi DiffRemoved #8f1e66 #e9e8ed 057 254 

" Git highlighting 
Hi gitCommitOverflow #8f1e66 NONE 057 
Hi gitCommitSummary  #62616b NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #6e5fe3 #bebcc7 036 250 
Hi GitGutterChange #bd2887 #bebcc7 000 250 
Hi GitGutterDelete #8f1e66 #bebcc7 057 250 
Hi GitGutterChangeDelete #3077e8 #bebcc7 106 250 

" XML highlighting 
Hi xmlTag     #a9a8b3 NONE 248  
Hi xmlEndTag  #a9a8b3 NONE 248  
Hi xmlTagName #767481 NONE 243  

" HTML highlighting 
Hi htmlBold      #7524a8 NONE 020 
Hi htmlItalic    #4c176d NONE 018 
Hi htmlTag       #a9a8b3  NONE 248  
Hi htmlEndTag    #a9a8b3  NONE 248  
Hi htmlStatement #5a49df NONE 030 

" JavaScript highlighting 
Hi javaScript          #62616b NONE 241 
Hi javaScriptBraces    #a9a8b3  NONE 248  
Hi javaScriptNumber    #9939d5 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #bd2887 NONE 000 
Hi jsStatement         #3077e8 NONE 106 
Hi jsReturn            #3077e8 NONE 106 
Hi jsThis              #8f1e66 NONE 057 
Hi jsClassDefinition   #3077e8 NONE 106 
Hi jsFunction          #3077e8 NONE 106 
Hi jsFuncName          #bd2887 NONE 000 
Hi jsFuncCall          #bd2887 NONE 000 
Hi jsClassFuncName     #bd2887 NONE 000 
Hi jsClassMethodType   #3077e8 NONE 106 
Hi jsRegexpString      #9e42d7 NONE 039 
Hi jsGlobalObjects     #3077e8 NONE 106 
Hi jsGlobalNodeObjects #3077e8 NONE 106 
Hi jsExceptions        #3077e8 NONE 106 
Hi jsBuiltins          #3077e8 NONE 106 

" Mail highlighting 
Hi mailQuoted1 #3077e8 NONE 106 
Hi mailQuoted2 #6e5fe3 NONE 036 
Hi mailQuoted3 #3077e8 NONE 106 
Hi mailQuoted4 #9e42d7 NONE 039 
Hi mailQuoted5 #bd2887 NONE 000 
Hi mailQuoted6 #3077e8 NONE 106 
Hi mailURL     #bd2887 NONE 000 
Hi mailEmail   #bd2887 NONE 000 

" Markdown highlighting 
Hi markdownCode             #6e5fe3 NONE 036 
Hi markdownError            #62616b #dedde4 241 253 
Hi markdownCodeBlock        #6e5fe3 NONE 036 
Hi markdownHeadingDelimiter #9939d5 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #bd2887 NONE 000 
Hi NERDTreeExecFile #62616b NONE 241 

" PHP highlighting 
Hi phpMemberSelector #62616b NONE 241 
Hi phpComparison     #62616b NONE 241 
Hi phpParent         #a9a8b3  NONE 248  
Hi phpVarSelector    #9e42d7 NONE 039 

" Python highlighting 
Hi pythonOperator #3077e8 NONE 106 
Hi pythonRepeat   #3077e8 NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #bd2887 NONE 000 
Hi rubyConstant               #2771e7 NONE 100 
Hi rubyInterpolation          #6e5fe3 NONE 036 
Hi rubyInterpolationDelimiter #9e42d7 NONE 039 
Hi rubyRegexp                 #9e42d7 NONE 039 
Hi rubySymbol                 #6e5fe3 NONE 036 
Hi rubyStringDelimiter        #9e42d7 NONE 039 

" SASS highlighting 
Hi sassidChar       #8f1e66 NONE 057 
Hi sassClassChar    #9939d5 NONE 021 
Hi sassInclude      #3077e8 NONE 106 
Hi sassMixing       #3077e8 NONE 106 
Hi sassMixinName    #bd2887 NONE 000 
Hi scssAttribute    #a9a8b3  NONE 248  
Hi scssDefinition   #a9a8b3  NONE 248  
Hi scssFunctionName #6656e1 NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #6e5fe3 #bebcc7 036 250 
Hi SignifySignChange #bd2887 #bebcc7 000 250 
Hi SignifySignDelete #8f1e66 #bebcc7 057 250 

" Spelling highlighting 
Hi SpellBad   #8f1e66 #e9e8ed 057 254 undercurl undercurl 
Hi SpellLocal #9e42d7 #e9e8ed 039 254 undercurl undercurl 
Hi SpellCap   #bd2887 #e9e8ed 000 254 undercurl undercurl 
Hi SpellRare  #3077e8 #e9e8ed 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#62616b guibg=s:#9e42d7 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#c8c7d1"   
  let g:terminal_color_1  = "#ce2c93"  
  let g:terminal_color_2  = "#95949e"  
  let g:terminal_color_3  = "#8a8994"  
  let g:terminal_color_4  = "#6c6b76"  
  let g:terminal_color_5  = "#62616b"  
  let g:terminal_color_6  = "#1d1d20"  
  let g:terminal_color_7  = "#08070d"  
  let g:terminal_color_8  = "#8f1e66"  
  let g:terminal_color_9  = "#9939d5"  
  let g:terminal_color_10 = "#3077e8"  
  let g:terminal_color_11 = "#aba1f7 " 
  let g:terminal_color_12 = "#9e42d7"  
  let g:terminal_color_13 = "#bd2887"  
  let g:terminal_color_14 = "#3077e8"  
  let g:terminal_color_15 = "#c8c7d1 " 
endif 

