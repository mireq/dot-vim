" NOTE: this is not the original file! converted for use with xterm-256
set background=dark

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "black"

hi Boolean         ctermfg=7     guifg=#e5e5e5 gui=bold cterm=bold
hi Character       ctermfg=217   guifg=#ff8787 cterm=bold    gui=bold
hi ColorColumn     ctermbg=234   guibg=#1c1c1c
hi Comment         ctermfg=8     guifg=#7f7f7f gui=italic
hi Conditional     ctermfg=228   guifg=#ffff87 cterm=bold  gui=bold
hi Cursor          ctermfg=0     ctermbg=145   guifg=#000000 guibg=#afafaf
hi CursorColumn    ctermbg=232   guibg=#080808 cterm=none
hi CursorLine      ctermbg=232   guibg=#080808 cterm=underline
hi Delimiter       ctermfg=158   guifg=#afffd7
hi Directory       ctermfg=147   guifg=#afafff
hi FoldColumn      ctermfg=192   ctermbg=235   guifg=#d7ff87 guibg=#262626
hi Folded          ctermfg=192   ctermbg=233   guifg=#d7ff87 guibg=#121212
hi Exception       ctermfg=228   guifg=#ffff87 cterm=bold  gui=bold
hi PreProc         ctermfg=156   guifg=#d7ff87
hi Identifier      ctermfg=111   guifg=#87afff cterm=NONE
hi IncSearch       ctermfg=231   ctermbg=18    guifg=#ffffff guibg=#000087 cterm=bold gui=bold
hi Label           ctermfg=228   guifg=#ffff87
hi LineNr          ctermfg=243   ctermbg=235   guifg=#767676 guibg=#262626
hi MatchParen      ctermfg=192   ctermbg=233   guifg=#d7ff87 guibg=#121212 cterm=bold,reverse
hi ModeMsg         ctermfg=181   guifg=#d7afaf gui=bold cterm=bold
hi MoreMsg         ctermfg=231   guifg=#ffffff gui=bold cterm=bold
hi NonText         ctermfg=104   guifg=#8787d7
hi Normal          ctermfg=252   ctermbg=233   guifg=#d0d0d0 guibg=#121212
hi Operator        ctermfg=158   guifg=#afffd7
hi Pmenu           ctermfg=231   ctermbg=240   guifg=#ffffff guibg=#585858
hi PmenuSel        ctermfg=0     ctermbg=156   guifg=#000000 guibg=#afff87
hi Question        ctermfg=231   guifg=#ffffff gui=bold cterm=bold
hi Repeat          ctermfg=228   guifg=#ffff87 cterm=bold  gui=bold
hi Search          ctermfg=227   ctermbg=233   guifg=#ffff5f guibg=#121212 cterm=bold,reverse gui=bold,reverse
hi Special         ctermfg=217   guifg=#ff8787 cterm=bold    gui=bold
hi SpecialKey      ctermfg=243   guifg=#767676
hi Statement       ctermfg=228   guifg=#ffff87 cterm=NONE    gui=NONE
hi StatusLine      term=NONE cterm=bold ctermbg=0 ctermfg=2 guifg=#00ff00 guibg=#000000 gui=bold
hi StatusLineNC    ctermfg=234   ctermbg=252   guifg=#1c1c1c guibg=#d0d0d0
hi String          ctermfg=204   guifg=#ff5787
hi Title           ctermfg=231   guifg=#ffffff gui=bold cterm=bold
hi Type            ctermfg=121   guifg=#87ffaf gui=NONE cterm=NONE
hi VertSplit       ctermfg=234   ctermbg=252   guifg=#1c1c1c guibg=#d0d0d0
hi Visual          ctermfg=236   ctermbg=210   guifg=#303030 guibg=#ff8787 cterm=reverse gui=reverse
hi VisualNOS       ctermfg=234   ctermbg=210   guifg=#1c1c1c guibg=#ff8787 cterm=bold,underline gui=bold,underline
hi WarningMsg      ctermfg=224   ctermbg=234   guifg=#ffd7d7 guibg=#1c1c1c cterm=bold gui=bold
hi WildMenu        ctermfg=0     ctermbg=181   guifg=#000000 guibg=#d7afaf

hi CallClass ctermfg=122
hi CallStaticClass ctermfg=231 guifg=#ffffff cterm=bold gui=bold
hi CallFunction ctermfg=129
hi CallPrivateFunction ctermfg=130

hi CallFunction      ctermfg=111   guifg=#87afff cterm=NONE

hi doxygenBrief    ctermfg=249   guifg=#b2b2b2 gui=bold cterm=bold
hi doxygenSpecialOnelineDesc ctermfg=123   guifg=#87ffff gui=NONE
