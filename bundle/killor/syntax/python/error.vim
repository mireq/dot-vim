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

