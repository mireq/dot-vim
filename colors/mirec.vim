" NOTE: this is not the original file! converted for use with xterm-256
set background=dark

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "moja"

hi Boolean         ctermfg=7     guifg=#e5e5e5 gui=bold cterm=bold
hi Character       ctermfg=181   guifg=#d7afaf gui=bold cterm=bold
hi ColorColumn     ctermbg=234   guibg=#1c1c1c
hi Comment         ctermfg=8     guifg=#7f7f7f
hi Conditional     ctermfg=229   guifg=#ffffaf gui=bold cterm=bold
hi Conceal         ctermfg=120   ctermbg=233   guifg=#87ff87 guibg=#121212
hi Constant        ctermfg=181   guifg=#d7afaf gui=bold cterm=bold
hi Cursor          ctermfg=0     ctermbg=145   guifg=#000000 guibg=#afafaf
hi CursorColumn    ctermbg=232   guibg=#080808 cterm=none
hi CursorLine      ctermbg=232   guibg=#080808 cterm=underline gui=underline
hi Debug           ctermfg=181   guifg=#d7afaf gui=bold cterm=bold
hi Define          ctermfg=157   guifg=#afffaf gui=bold cterm=bold
hi Delimiter       ctermfg=193   guifg=#d7ffaf
hi DiffAdd         ctermbg=22    guibg=#005f00
hi DiffChange      ctermbg=24    guibg=#005f87
hi DiffDelete      ctermfg=234   ctermbg=88    guifg=#1c1c1c guibg=#870000 cterm=none
hi DiffText        ctermfg=7     ctermbg=31    guifg=#ffffff guibg=#0087af cterm=bold gui=bold
hi Directory       ctermfg=231   guifg=#ffffff gui=bold cterm=bold
hi Error           ctermfg=231   ctermbg=9     guifg=#ffffff guibg=#ff0000
hi ErrorMsg        ctermfg=0     ctermbg=6     guifg=#000000 guibg=#00cdcd
hi Exception       ctermfg=123   guifg=#87ffff cterm=underline
hi Float           ctermfg=219   guifg=#ffafff
hi FoldColumn      ctermfg=181   ctermbg=235   guifg=#d7afaf guibg=#262626
hi Folded          ctermfg=181   ctermbg=233   guifg=#d7afaf guibg=#121212
hi Function        ctermfg=228   guifg=#ffff87
hi Identifier      ctermfg=153   guifg=#afd7ff gui=bold cterm=bold
hi phpMethodsVar   ctermfg=151   guifg=#afd7af gui=NONE cterm=NONE
hi Include         ctermfg=156   guifg=#afff87 gui=bold cterm=bold
hi IncSearch       ctermfg=0     ctermbg=131   guifg=#000000 guibg=#af5f5f
hi Keyword         ctermfg=227   guifg=#ffff5f gui=bold cterm=bold
hi Label           ctermfg=229   guifg=#ffffaf gui=bold,underline cterm=bold,underline
hi LineNr          ctermfg=8     ctermbg=235   guifg=#7f7f7f guibg=#262626
hi Macro           ctermfg=157   guifg=#afffaf gui=bold cterm=bold
hi MatchParen      ctermfg=192   ctermbg=233   guifg=#d7ff87 guibg=#121212 cterm=bold,reverse
hi ModeMsg         ctermfg=181   guifg=#d7afaf gui=bold cterm=bold
hi MoreMsg         ctermfg=231   guifg=#ffffff gui=bold cterm=bold
hi NonText         ctermfg=104   guifg=#8787d7
hi Normal          ctermfg=252   ctermbg=233   guifg=#d0d0d0 guibg=#121212
hi Number          ctermfg=111   guifg=#87afff
hi Operator        ctermfg=153   guifg=#afd7ff gui=bold cterm=bold
hi Pmenu           ctermfg=231   ctermbg=240   guifg=#ffffff guibg=#585858
hi PmenuSel        ctermfg=0     ctermbg=156   guifg=#000000 guibg=#afff87
hi PreCondit       ctermfg=157   guifg=#afffaf gui=bold cterm=bold
hi PreProc         ctermfg=156   guifg=#d7ff87
hi Question        ctermfg=231   guifg=#ffffff gui=bold cterm=bold
hi Repeat          ctermfg=222   guifg=#ffd787 gui=bold cterm=bold
hi Search          ctermfg=227   ctermbg=233   guifg=#ffff5f guibg=#121212 cterm=bold,reverse gui=bold,reverse
hi SignColumn      ctermfg=8     ctermbg=233   guifg=#7f7f7f guibg=#262626
hi SpecialChar     ctermfg=181   guifg=#d7afaf gui=bold cterm=bold
hi SpecialComment  ctermfg=181   guifg=#d7afaf gui=bold cterm=bold
hi Special         ctermfg=192   guifg=#d7ff87
hi SpecialKey      ctermfg=8     guifg=#7f7f7f
hi SpellBad        ctermfg=174   guifg=#d78787 ctermbg=233 gui=undercurl guisp=Red cterm=underline term=none
hi Statement       ctermfg=229   guifg=#ffffaf gui=bold cterm=bold
hi doxygenBrief    ctermfg=249   guifg=#b2b2b2 gui=bold cterm=bold
hi doxygenSpecialOnelineDesc ctermfg=123   guifg=#87ffff gui=NONE
hi StatusLine      term=NONE cterm=bold ctermbg=0 ctermfg=2 guifg=#00ff00 guibg=#000000 gui=bold
hi StatusLineNC    ctermfg=234   ctermbg=252   guifg=#1c1c1c guibg=#d0d0d0
hi StorageClass    ctermfg=87    guifg=#57ffd7 gui=bold cterm=bold
hi String          ctermfg=174   guifg=#d78787
hi Structure       ctermfg=192   guifg=#d7ff87 gui=bold cterm=bold
hi Tag             ctermfg=181   guifg=#d7afaf gui=bold cterm=bold
hi Title           ctermfg=231   guifg=#ffffff gui=bold cterm=bold
hi Todo            ctermfg=231   ctermbg=0     guifg=#ffffff guibg=#000000 cterm=bold gui=bold
hi Typedef         ctermfg=206   guifg=#ff5fd7 gui=bold,underline cterm=bold,underline
hi Type            ctermfg=153   guifg=#afd7ff gui=NONE
hi Underlined      ctermfg=81    guifg=#5fd7ff term=underline cterm=underline
hi VertSplit       ctermfg=234   ctermbg=252   guifg=#1c1c1c guibg=#d0d0d0
hi Visual          ctermfg=236   ctermbg=210   guifg=#303030 guibg=#ff8787 cterm=reverse gui=reverse
hi VisualNOS       ctermfg=234   ctermbg=210   guifg=#1c1c1c guibg=#ff8787 cterm=bold,underline gui=bold,underline
hi WarningMsg      ctermfg=231   ctermbg=234   guifg=#ffffff guibg=#1c1c1c cterm=bold gui=bold
hi WildMenu        ctermfg=0     ctermbg=181   guifg=#000000 guibg=#d7afaf

hi OverLength      ctermbg=237   guibg=#3a3a3a
hi WarnLength      ctermbg=235   guibg=#262626

hi BufferSelected  ctermfg=227   ctermbg=233   guifg=#ffff5f guibg=#121212 cterm=bold,reverse gui=bold,reverse
hi BufferNormal    ctermfg=252   ctermbg=233   guifg=#d0d0d0 guibg=#121212

hi QtObject        ctermfg=120   guifg=#87ff87

hi outlTags        ctermfg=51    guifg=#00ffff
hi OL1             ctermfg=231   ctermbg=232   guifg=#ffffff guibg=#080808 cterm=bold,underline gui=bold,underline
hi OL2             ctermfg=231   guifg=#ffffff gui=bold cterm=bold
hi OL3             ctermfg=228   guifg=#ffffff gui=bold cterm=bold
hi OL4             ctermfg=254   guifg=#e4e4e4 gui=NONE cterm=NONE
hi OL5             ctermfg=189   guifg=#d7d7ff gui=NONE cterm=NONE
hi OL6             ctermfg=187   guifg=#d7d7af gui=NONE cterm=NONE
hi OL7             ctermfg=146   guifg=#afafd7 gui=NONE cterm=NONE
hi OL8             ctermfg=144   guifg=#afaf87 gui=NONE cterm=NONE
hi OL9             ctermfg=103   guifg=#8787af gui=NONE cterm=NONE

hi BT1             ctermfg=230   guifg=#ffffd7
hi BT2             ctermfg=230   guifg=#ffffd7
hi BT3             ctermfg=230   guifg=#ffffd7
hi PT1             ctermfg=196   guifg=#ff0000
hi PT2             ctermfg=196   guifg=#ff0000
hi PT3             ctermfg=196   guifg=#ff0000
hi TA1             ctermfg=230   guifg=#ffffd7
hi TA2             ctermfg=230   guifg=#ffffd7
hi TA3             ctermfg=230   guifg=#ffffd7
hi UT1             ctermfg=196   guifg=#ff0000
hi UT2             ctermfg=196   guifg=#ff0000
hi UT3             ctermfg=196   guifg=#ff0000
hi UB1             ctermfg=196   guifg=#ff0000
hi UB2             ctermfg=196   guifg=#ff0000
hi UB3             ctermfg=196   guifg=#ff0000

hi RegionMaker     ctermfg=235   ctermbg=253   guifg=#262626 guibg=#dadada
hi cCustomFunc     ctermfg=158   guifg=#afffd7
hi cCustomClass    ctermfg=159   guifg=#afffff
"hi cIncluded       ctermfg=155   guifg=#afff5f
hi link cppFuncDef Special
hi link diffFile Conceal

"hi Attribute       ctermfg=153   guifg=#afd7ff gui=NONE
hi Attribute       ctermfg=158   guifg=#afffd7
hi CallClass       ctermfg=120   ctermbg=233   guifg=#87ff87 guibg=#121212
hi CallStaticClass ctermfg=231 guifg=#ffffff cterm=bold gui=bold
hi CallFunction    ctermfg=153   guifg=#afd7ff gui=NONE
hi CallPrivateFunction ctermfg=204   guifg=#ff5787
hi Self            ctermfg=144 guifg=#afaf87 cterm=bold gui=bold

" todo
hi todoOkSymbol    ctermfg=34  guifg=#00AF00
hi todoBadSymbol   ctermfg=196 guifg=#FF0000
hi todoPartSymbol  ctermfg=191 guifg=#D7FF5F
hi todoOk          ctermfg=241 guifg=#626262
hi todoBad         ctermfg=227 guifg=#FFFF87
hi todoPart        ctermfg=136 guifg=#AF8700

hi mailQuoted1     ctermfg=191
hi mailQuoted2     ctermfg=94
hi mailQuoted3     ctermfg=24
hi mailQuoted4     ctermfg=88

hi IndentGuidesOdd  guibg=#1c1c1c   ctermbg=234
hi IndentGuidesEven  guibg=#262626   ctermbg=235
