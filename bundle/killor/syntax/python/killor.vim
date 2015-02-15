" error.vim
" zast_set.vim
" zzast_attr.vim
" zzast_braket.vim
" zzast_callclass.vim
" zzast_callfunc.vim
" zzast_define.vim
" zzast_dot_func.vim
" zzast_operator.vim
" error.vim
"syn match pythonError "^\s*if\s.*[^\:]$" display
"syn match pythonExpress "^\s*def\s\+\w\+(\(.\&[^)]\|\n\)\+).*"
"syn match pythonError ".*)\(\(\s*:\)\@!.\)*\s*$" containedin=pythonExpress contained
"syn match pythonError ".*\(\(\s*)\)\@!.\)*:\s*$" containedin=pythonExpress contained
"syn match pythonError "^\s*def\s\+\w\+(.*\n.*)\s*:\s*$" display
"syn match pythonError "^\s*def\s\+\w\+\([(:]\@!.\)*$" display " ( is always. useless
syn match pythonError "^\s*def\s\+\w\+(\(.\&[^)]\)*)\([^:]\|\)$" display
syn match pythonError "^\s*def\s\+\w\+\s*\([(]\@!.\)*$" display
"syn match pythonError "^\s*def\s*\(\([\:(]\)\@!.\)*$" display
syn match pythonError "^\s*classs\s\+\w\+\(\([\:(]\)\@!.\)*$" display
"syn match pythonError "^\s*\(if\|elif\)[^:]*$" display
"syn match pythonError "^\s*if\s*\(\([\:(]\)\@!.\)*$" display
"syn match pythonError "^\s*if\s*(.*)\(\([\:(]\)\@!.\)*$" display
"syn match pythonError "^\s*if\s*(.*\n*.*)[^:]\(\([\:(]\)\@!.\)*$" display
"syn match pythonError "^\s*if\s*(.*\n*.*\n*.*)[^:]\(\([\:(]\)\@!.\)*$" display
syn match pythonError "^\s*else\s*\(\([\:(]\)\@!.\)*$" display
syn match pythonError "^\s*except\s*\(\([\:(]\)\@!.\)*$" display
"syn match pythonError "^\s*if\s*(.*\n*)\(\([\:(]\)\@!.\)*$" display
"syn match pythonError "^\s*if\s*.\{-}(\(.\|\n\)\{-}).*[^:]" display
"syn match pythonError "^\s*if\s*(\(\([\n]\)\@!.\)*$" display
"syn match pythonError "^\s*if\s*(\(.\|\n\)*)\s*[^:]\s*$" display
"syn match pythonError "^\s*if\s*(.*\n.*)\s*[^:\n]\s*$" display
"syn match pythonError "^\s*if\s*(.*\s[=]\s.*)" display
"syn match pythonError "^\s*if\s*(.*=\(\([=]\)\@!.\)*$" display
"syn match pythonError "^\s*except\s.*[^\:]$" display
syn match pythonError "\(self\)\@<!\._\(_\)\@!" display
syn match pythonError "\.$" display

syn match pythonError 
  \ "^\s*\(class\|def\|for\|while\|try\|except\|finally\|if\|elif\|else\)\s*$"
  \ display

syn match pythonError "&&" display
syn match pythonError "||" display
syn match pythonError "[;]$" display

" zast_set.vim
syn match Self "self" display
"syn match pythonAttribute "\.\w\+\(\W\|\n\)\@=" display
"syn match pythonInnerAttribute "\._\w\+\(\W\|\n\)\@=" display
"syn match pythonCallFunction "\w\+\((\)\@=" display
syn match pythonCallInnerFunction "\._\w\+\s*\((\)\@=" display
"syn match pythonOperator "-=" display
"syn match pythonOperator "+=" display
"syn match pythonOperator "==" display

syn clear Number
syn keyword pythonBuiltinObj	 __metaclass__
syn keyword pythonBuiltinObj	 __controller__
syn keyword pythonBoolean	True False
hi def link pythonBoolean           Boolean
"HiLink pythonInnerAttribute	   InnerAttribute
" zzast_attr.vim
syn match Attribute "\.\l\w*\s*\>" display
" zzast_braket.vim
syn match Bracket "[()]" display
syn match SquareBracket "[\[\]]" display
syn match CurlyBracket "[{}]" display
" zzast_callclass.vim
syn match CallStaticClass "\<\u\w*\>" display
syn match CallClass "\<\u\w*\s*\((\)\@=" display
" zzast_callfunc.vim
syn match CallFunction "\<\l\w*\s*\((\)\@=" display
syn match CallPrivateFunction "\<_\w*\s*\((\)\@=" display
" zzast_define.vim
syn match Assign "=" display
syn match Comma ',' display
syn match Semicolon ';' display
" zzast_dot_func.vim
syn match Dot "\." display
syn match Attribute "\.\@<=\l\w*\s*\((\)\@!\>" display
syn match UppercaseAttribute "\.\@<=\u\(\u\|_\)*\((\)\@!\>" display
syn match PrivateAttribute "\.\@<=_\w*\s*\((\)\@!\>" display
syn match MorePrivateAttribute "\.\@<=__\w*\s*\((\)\@!\>" display
" zzast_operator.vim
syn match Operator ':' display
syn match Operator "\(++\|--\)" display
syn match Operator "\(<\|>\|+\|-\)" display
syn match Operator "==" display
syn match NOTOperator '\(!=\)\|!' display
syn match QOperator '?' display
