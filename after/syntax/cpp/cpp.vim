" Highlight Class and Function names
syn match    cppFuncDef      "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?\s*[:]\?$" contains=cCustomScope
syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
syn match    cCustomScope    "::" contained
"syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope

hi def link cCustomFunc  Function
"hi def link cCustomClass Function

