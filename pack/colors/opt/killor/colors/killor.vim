" Vim color file
" Maintainer:	Keith Yang <keitheis@gmail.com>
" Last Change: $Date: 2009/04/15 09:02:40 $
"
" As you see, it's still under evolution.
"
" Color: {{{

function! Fixcolors()
    syn on

    " Don't color these, jerk.
    hi Constant NONE
    hi Identifier NONE
    hi Statement NONE
    hi PreProc NONE
    hi Type NONE
    hi Special NONE

    " Now override some things
    hi Comment ctermfg=grey
    hi Todo ctermfg=darkyellow ctermbg=black
    hi LineNr ctermfg=grey ctermbg=black
    hi Folded ctermfg=darkyellow ctermbg=black
    hi SpecialKey  ctermfg=darkyellow ctermbg=black
endfunction

"hi pythonError gui=underline guifg=#6ab825
"hi pythonError gui=underline guifg=red

" v7
    syntax on
    set background=dark

    hi TabLine      cterm=none ctermfg=black ctermbg=yellow
    hi TabLine      gui=underline,bold guifg=#3095DD guibg=black
    hi TabLineSel   cterm=bold ctermfg=yellow
    "hi TabLineSel   gui=bold guifg=yellow guibg=skyblue
    hi TabLineSel   gui=bold guifg=yellow guibg=#3095DD
    hi TabLineFill  cterm=none ctermbg=yellow gui=underline
    hi TabLineFill  gui=underline guifg=#3095DD guibg=black
    hi MatchParen   gui=underline guifg=#ffcc66 guibg=#009933
    hi MatchParen   ctermfg=yellow ctermbg=red cterm=bold,underline

    hi CursorLine   guibg=grey10
    hi CursorLine   cterm=none ctermbg=black
    hi Pmenu        guibg=grey10
    hi PmenuSel     guibg=grey30 guifg=yellow
    hi PmenuSbar    guibg=grey30
    hi PmenuThumb   guibg=grey85 gui=none
    hi Pmenu        ctermbg=black
    hi PmenuSel     ctermbg=yellow ctermfg=black cterm=bold
    hi PmenuSbar    ctermbg=black
    hi PmenuThumb   ctermbg=yellow cterm=none
" v6
    hi DiffChange   guifg=yellow guibg=darkmagenta
    hi DiffChange   ctermfg=yellow ctermbg=magenta
    hi DiffText     ctermbg=black
    hi DiffText     guibg=black
    hi DiffAdd      guibg=#5081dc
    hi DiffAdd      ctermbg=blue
    hi DiffDelete   guibg=indianred
    hi DiffDelete   ctermbg=darkred
    hi Question	    guifg=indianred
    hi Question	    ctermfg=red
    hi MoreMsg	    guifg=yellow
    hi Comment	    ctermfg=darkgreen guifg=#666666
"    hi Comment	    ctermfg=4 guifg=red2
    hi Normal       guifg=grey92 guibg=black
    hi Normal       ctermfg=grey
    hi Search       guifg=Yellow guibg=Blue gui=bold
    hi Search       ctermfg=Black ctermbg=Yellow cterm=bold
    hi Visual       guifg=yellow guibg=Grey25 gui=none
    hi String	      guifg=#ff7777
    hi Special	    guifg=Orange
    hi Special	    cterm=none ctermfg=red
    hi SpecialKey   ctermfg=darkgray
    hi SpecialKey   guifg=grey30
    hi Error        ctermbg=red guibg=red
    "hi Directory    ctermfg=2 guifg=skyblue
    "hi Directory    ctermfg=2 guifg=#00c000
    "hi link Directory Identifier
    hi Directory gui=bold guifg=#3AA3FC
    hi link treeFile  Normal
    hi link treePart SpecialKey
    hi link treeLink Special
    hi PreProc 	    cterm=bold gui=bold ctermfg=red guifg=indianred
    "hi Identifier  ctermfg=6 guifg=#00c0c0
"    hi CallFunction guifg=#aaddff
    hi CallClass guifg=#ff9931
    hi CallStaticClass guifg=#44bbff ctermfg=blue
    hi CallFunction guifg=#ffff91
    hi CallPrivateFunction guifg=#aa99cc
    hi CallFunction ctermfg=green
    "hi Attribute    guifg=#d6ffa9
    "hi InnerAttribute guifg=#badfa7
    "hi Attribute guifg=#ff99ff
    hi Attribute guifg=#66dd33
    hi UppercaseAttribute gui=bold guifg=#dddd33
    hi PrivateAttribute guifg=#ff99ff
    hi MorePrivateAttribute guifg=#cc66aa
    "hi Attribute      guifg=#ffdb66
    "hi InnerAttribute   guifg=lightgreen
    "hi InnerAttribute   guifg=#e0a050
    hi NonText          guifg=#101010
    hi NonText          ctermfg=black
    hi Bracket          guifg=#60ff60
"    hi SquareBracket    guifg=#ffff60
    hi SquareBracket    gui=bold guifg=#44bbff
    hi CurlyBracket     gui=bold guifg=#60ff60
    hi Assign 	      	cterm=bold gui=bold ctermfg=red guifg=#ff6060
    hi NOTOperator      gui=italic,bold guifg=#ff6060
    hi Dot              gui=bold guifg=#dd7733
    hi QOperator        guifg=yellow
    hi Comma            gui=bold guifg=#60ff60
    hi Semicolon        gui=bold guifg=black guibg=#894310
    "hi Function 	guifg=skyblue gui=bold
"    hi Function 	guifg=#44bbff gui=bold
    hi Function 	guifg=#ffff60 gui=bold
    hi Function 	ctermfg=blue cterm=bold
    "hi Self             guifg=lightgreen
    "hi BuiltinFunc      guifg=#4477ff
    hi BuiltinFunc      guifg=#aa66ff
    hi link Self BuiltinFunc
    hi Identifier 	guifg=#6ab825 gui=bold
    "hi Identifier	guifg=skyblue gui=bold
    "hi Identifier	ctermfg=blue cterm=bold
    hi Boolean          gui=bold guifg=#60ff60
    hi Number           guifg=#ee82ee
    hi Variable 	    	ctermfg=brown gui=bold guifg=#f0a050
    hi Constant		term=none cterm=none ctermfg=magenta guifg=#f0a0a0
    "hi Statement	guifg=yellow gui=none
"    hi Statement	cterm=bold term=bold ctermfg=yellow	gui=bold  guifg=#ffff60
    hi Type		cterm=bold term=bold ctermfg=blue
    hi Type		gui=bold   guifg=#44bbff
"    hi Type		cterm=bold term=bold ctermfg=lightgreen  gui=bold  guifg=#60ff60
    hi Statement	cterm=bold term=bold ctermfg=yellow
    hi Statement	gui=bold  guifg=#ff3333
    "hi Todo		ctermfg=4 ctermbg=3 guifg=#000080 guibg=#c0c000
    hi Todo		cterm=standout  ctermfg=yellow	ctermbg=black  gui=bold  guifg=Blue  guibg=yellow
    hi ModeMsg		gui=none
    hi StatusLine	gui=none guifg=black guibg=yellow
    hi StatusLineNC	gui=none guifg=black guibg=gray
    hi StatusLine	cterm=none ctermfg=black ctermbg=yellow
    hi StatusLineNC	cterm=none ctermfg=black ctermbg=gray
    hi Cursor		guibg=yellow guifg=black
    "hi iCursor		guifg=white  guibg=steelblue
    "hi Cursor		cterm=reverse ctermbg=yellow ctermfg=black
    "hi Cursor		cterm=reverse ctermbg=yellow ctermfg=black
    "hi Folded		gui=none guibg=black	guifg=yellow
    hi Folded		gui=none guibg=Grey5 guifg=yellow
    hi Folded		cterm=none ctermfg=yellow ctermbg=none
    hi FoldColumn	gui=none guibg=Grey5 guifg=yellow
    hi FoldColumn	cterm=bold ctermbg=grey ctermfg=black
    hi Title		gui=none guibg=Grey10 guifg=yellow
    hi Title		cterm=none ctermbg=none ctermfg=blue
    hi MyTagListFileName gui=none guibg=yellow guifg=black
    "hi MyTagListTagScope gui=none guibg=Grey10 guifg=yellow
"  hi NonText		guibg=#010101
"  hi SpellErrors	ctermfg=Red guifg=Red cterm=underline gui=underline term=reverse
    " CTERM
" }}}
