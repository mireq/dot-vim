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
