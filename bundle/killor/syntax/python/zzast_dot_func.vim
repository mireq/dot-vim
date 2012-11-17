syn match Dot "\." display
syn match Attribute "\.\@<=\l\w*\s*\((\)\@!\>" display
syn match UppercaseAttribute "\.\@<=\u\(\u\|_\)*\((\)\@!\>" display
syn match PrivateAttribute "\.\@<=_\w*\s*\((\)\@!\>" display
syn match MorePrivateAttribute "\.\@<=__\w*\s*\((\)\@!\>" display
