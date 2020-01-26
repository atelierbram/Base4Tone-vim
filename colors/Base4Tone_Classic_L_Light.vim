" colorscheme: Base4Tone_Classic_L by Bram de Haan
" author: Bram de Haan - https://github.com/atelierbram/Base4Tone-vim
" https://github.com/atelierbram/Base4Tone-vim/blob/master/colors/Base4Tone_Classic_L_Light.vim

" Theme setup 
set background=light 
hi clear 
if exists("syntax_on") 
  syntax reset 
endif 
let g:colors_name = "Base4Tone_Classic_L_Light" 

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
Hi Debug        #4b38dc NONE 057 
Hi Directory    #007a6a NONE 030 
Hi Error        #dce5e4 #4b38dc 253 
Hi ErrorMsg     #4b38dc #dce5e4 057 
Hi Exception    #4b38dc NONE 057 
Hi FoldColumn   #3077e8 #c6d2d0 039 251 
Hi Folded       #829b98 #c6d2d0 245 251 
Hi IncSearch    #075a11 #67e476 058 191 
Hi Macro        #4b38dc NONE 057 
Hi MatchParen   #049582 #3cdd4f 036 250 
Hi ModeMsg      #008a77 NONE 036 
Hi MoreMsg      #008a77 NONE 036 
Hi Question     #887af0 NONE 069 
Hi Search       #dce5e4 #20b632 253 142 
Hi SpecialKey   #829b98 NONE 245 
Hi TooLong      #4b38dc NONE 057 
Hi Underlined   #175dcf NONE 020 
Hi Ignore       #bbc9c7  NONE 250  
Hi Visual       NONE #c6d2d0 NONE 251 
Hi VisualNOS    #4b38dc NONE 057 
Hi WarningMsg   #4b38dc NONE 057 
Hi WildMenu     #ebffed #0c971c 015 106
Hi Menu         #ebffed #0c971c 015 106
Hi Scrollbar    #ebffed #0c971c 015 106
Hi Tooltip      #ebffed #0c971c 015 106
Hi Title        #175dcf NONE 020 NONE NONE 
Hi Conceal      #887af0 #dce5e4 069 253 
Hi Cursor       #f6f9f8 #24cc38 015 248 
Hi NonText      #829b98 NONE 245 
Hi Normal       #001a16 #e8eeed 000 254 
Hi LineNr       #b0bfbd #dce5e4 249 253  
Hi SignColumn   #c6d2d0 #8ea4a1 251 246 
Hi StatusLine   #a4b6b4 #dce5e4 248 253 NONE NONE 
Hi StatusLineNC #8ea4a1 #d1dcda 246 252 NONE NONE 
Hi VertSplit    #e8eeed #e8eeed 254 254 
Hi CursorColumn NONE #364442 NONE 237 NONE NONE 
Hi CursorLine   NONE #dce5e4 NONE 253 NONE NONE 
Hi CursorLineNr #99adab #d1dcda 247 252 
Hi PMenu        #647d79 #dce5e4 242 253 
Hi PMenuSel     #bbc9c7 #dce5e4 250 253 
Hi TabLine      #829b98 #dce5e4 245 253 
Hi TabLineFill  #829b98 #dce5e4 245 253 
Hi TabLineSel   #008a77 #dce5e4 036 253 

" Standard syntax highlighting 
Hi Boolean      #2771e7 NONE 021 
Hi Character    #4b38dc NONE 057 
Hi Comment      #a4b6b4  NONE 248  
Hi Conditional  #0c971c NONE 106 
Hi Constant     #0a7616 NONE 100 
Hi Define       #0c971c NONE 106 
Hi Delimiter    #5a96f6 NONE 045 
Hi Float        #2771e7 NONE 021 
Hi Function     #2771e7 NONE 021 
Hi Identifier   #0a7616 NONE 239 
Hi Include      #6656e1 NONE 000 
Hi Keyword      #0c971c NONE 106 
Hi Label        #0c971c NONE 106 
Hi Number       #05152e NONE 017 
Hi Operator     #2d3937 NONE 236 
Hi PreProc      #0c971c NONE 106 
Hi Repeat       #0c971c NONE 106 
Hi Special      #007061 NONE 030 
Hi SpecialChar  #6e5fe3 NONE 063 
Hi Statement    #00574b NONE 022 NONE NONE 
Hi StorageClass #1249a1 NONE 019 
Hi String       #004d42 NONE 024 
Hi Structure    #0c971c NONE 106 
Hi Tag          #0c971c NONE 106 
Hi Todo         #064b0e #5fe3d1 058 049 
Hi Type         #0a7616 NONE 100 NONE NONE NONE 
Hi Typedef      #0c971c NONE 106 
Hi Noise        #a4b6b4 NONE  248 

" C highlighting 
Hi cOperator  #3077e8 NONE 039 
Hi cPreCondit #0c971c NONE 106 

" C# highlighting 
Hi csClass                #0c971c NONE 106 
Hi csAttribute            #0c971c NONE 106 
Hi csModifier             #0c971c NONE 106 
Hi csType                 #4b38dc NONE 057 
Hi csUnspecifiedStatement #6656e1 NONE 000 
Hi csContextualStatement  #0c971c NONE 106 
Hi csNewDecleration       #4b38dc NONE 057 

" CSS highlighting 
Hi cssBraces     #b0bfbd  NONE 249  
Hi cssClassName  #0a7616 NONE 239 
Hi cssColor      #008a77 NONE 036 
Hi cssImportant  #7667e4 NONE 063 

" Diff highlighting 
Hi DiffAdd     #008a77 #bbc9c7 036 250 
Hi DiffChange  #829b98 #bbc9c7 245 250 
Hi DiffDelete  #4b38dc #bbc9c7 057 250 
Hi DiffText    #6656e1 #bbc9c7 000 250 
Hi DiffAdded   #008a77 #e8eeed 036 254 
Hi DiffFile    #4b38dc #e8eeed 057 254 
Hi DiffNewFile #008a77 #e8eeed 036 254 
Hi DiffLine    #6656e1 #e8eeed 000 254 
Hi DiffRemoved #4b38dc #e8eeed 057 254 

" Git highlighting 
Hi gitCommitOverflow #4b38dc NONE 057 
Hi gitCommitSummary  #5b716e NONE 241 

" GitGutter highlighting 
Hi GitGutterAdd    #008a77 #bbc9c7 036 250 
Hi GitGutterChange #6656e1 #bbc9c7 000 250 
Hi GitGutterDelete #4b38dc #bbc9c7 057 250 
Hi GitGutterChangeDelete #0c971c #bbc9c7 106 250 

" XML highlighting 
Hi xmlTag     #a4b6b4 NONE 248  
Hi xmlEndTag  #a4b6b4 NONE 248  
Hi xmlTagName #6d8884 NONE 243  

" HTML highlighting 
Hi htmlBold      #175dcf NONE 020 
Hi htmlItalic    #0f3e8a NONE 018 
Hi htmlTag       #a4b6b4  NONE 248  
Hi htmlEndTag    #a4b6b4  NONE 248  
Hi htmlStatement #007a6a NONE 030 

" JavaScript highlighting 
Hi javaScript          #5b716e NONE 241 
Hi javaScriptBraces    #a4b6b4  NONE 248  
Hi javaScriptNumber    #2771e7 NONE 021 
" pangloss/vim-javascript highlighting 
Hi jsOperator          #6656e1 NONE 000 
Hi jsStatement         #0c971c NONE 106 
Hi jsReturn            #0c971c NONE 106 
Hi jsThis              #4b38dc NONE 057 
Hi jsClassDefinition   #0c971c NONE 106 
Hi jsFunction          #0c971c NONE 106 
Hi jsFuncName          #6656e1 NONE 000 
Hi jsFuncCall          #6656e1 NONE 000 
Hi jsClassFuncName     #6656e1 NONE 000 
Hi jsClassMethodType   #0c971c NONE 106 
Hi jsRegexpString      #3077e8 NONE 039 
Hi jsGlobalObjects     #0c971c NONE 106 
Hi jsGlobalNodeObjects #0c971c NONE 106 
Hi jsExceptions        #0c971c NONE 106 
Hi jsBuiltins          #0c971c NONE 106 

" Mail highlighting 
Hi mailQuoted1 #0c971c NONE 106 
Hi mailQuoted2 #008a77 NONE 036 
Hi mailQuoted3 #0c971c NONE 106 
Hi mailQuoted4 #3077e8 NONE 039 
Hi mailQuoted5 #6656e1 NONE 000 
Hi mailQuoted6 #0c971c NONE 106 
Hi mailURL     #6656e1 NONE 000 
Hi mailEmail   #6656e1 NONE 000 

" Markdown highlighting 
Hi markdownCode             #008a77 NONE 036 
Hi markdownError            #5b716e #dce5e4 241 253 
Hi markdownCodeBlock        #008a77 NONE 036 
Hi markdownHeadingDelimiter #2771e7 NONE 021 

" NERDTree highlighting 
Hi NERDTreeDirSlash #6656e1 NONE 000 
Hi NERDTreeExecFile #5b716e NONE 241 

" PHP highlighting 
Hi phpMemberSelector #5b716e NONE 241 
Hi phpComparison     #5b716e NONE 241 
Hi phpParent         #a4b6b4  NONE 248  
Hi phpVarSelector    #3077e8 NONE 039 

" Python highlighting 
Hi pythonOperator #0c971c NONE 106 
Hi pythonRepeat   #0c971c NONE 106 

" Ruby highlighting 
Hi rubyAttribute              #6656e1 NONE 000 
Hi rubyConstant               #0b891a NONE 100 
Hi rubyInterpolation          #008a77 NONE 036 
Hi rubyInterpolationDelimiter #3077e8 NONE 039 
Hi rubyRegexp                 #3077e8 NONE 039 
Hi rubySymbol                 #008a77 NONE 036 
Hi rubyStringDelimiter        #3077e8 NONE 039 

" SASS highlighting 
Hi sassidChar       #4b38dc NONE 057 
Hi sassClassChar    #2771e7 NONE 021 
Hi sassInclude      #0c971c NONE 106 
Hi sassMixing       #0c971c NONE 106 
Hi sassMixinName    #6656e1 NONE 000 
Hi scssAttribute    #a4b6b4  NONE 248  
Hi scssDefinition   #a4b6b4  NONE 248  
Hi scssFunctionName #00806f NONE 030 

" Signify highlighting 
Hi SignifySignAdd    #008a77 #bbc9c7 036 250 
Hi SignifySignChange #6656e1 #bbc9c7 000 250 
Hi SignifySignDelete #4b38dc #bbc9c7 057 250 

" Spelling highlighting 
Hi SpellBad   #4b38dc #e8eeed 057 254 undercurl undercurl 
Hi SpellLocal #3077e8 #e8eeed 039 254 undercurl undercurl 
Hi SpellCap   #6656e1 #e8eeed 000 254 undercurl undercurl 
Hi SpellRare  #0c971c #e8eeed 106 254 undercurl undercurl 

" neovim terminal 
if has('nvim') 
hi! link TermCursor Cursor 
hi TermCursorNC ctermfg=30 ctermbg=246 guifg=s:#5b716e guibg=s:#3077e8 guisp=NONE cterm=NONE gui=NONE 
  let g:terminal_color_0  = "#c6d2d0"   
  let g:terminal_color_1  = "#6e5fe3"  
  let g:terminal_color_2  = "#8ea4a1"  
  let g:terminal_color_3  = "#829b98"  
  let g:terminal_color_4  = "#647d79"  
  let g:terminal_color_5  = "#5b716e"  
  let g:terminal_color_6  = "#1b2221"  
  let g:terminal_color_7  = "#070d0c"  
  let g:terminal_color_8  = "#4b38dc"  
  let g:terminal_color_9  = "#2771e7"  
  let g:terminal_color_10 = "#0c971c"  
  let g:terminal_color_11 = "#1ed2ba " 
  let g:terminal_color_12 = "#3077e8"  
  let g:terminal_color_13 = "#6656e1"  
  let g:terminal_color_14 = "#0c971c"  
  let g:terminal_color_15 = "#c6d2d0 " 
endif 

