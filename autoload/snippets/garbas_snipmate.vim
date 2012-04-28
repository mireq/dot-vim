function! snippets#garbas_snipmate#init()
	call snippets#garbas_snipmate#reset()
endfunction

function! snippets#garbas_snipmate#add_snippet(fullname, args_pos)
	call add(s:fullname, a:fullname)
	call add(s:args_pos, a:args_pos)
	return a:fullname
endfunction

function! snippets#garbas_snipmate#trigger()
	" If we are already in a snipmate snippet, well not much we can do until snipmate supports nested snippets
	if exists('g:snipPos')
		return
	endif

	let l:line = getline('.')
	let l:cursorpos = getpos('.')
	let l:line = l:line[0 : l:cursorpos[2] - 2]
	let l:pos_idx = 0
	for current_snip in s:fullname
		if l:line[ - strlen(current_snip) : - 1] == current_snip
			execute "normal" (strlen(current_snip) - 1) . "dh"
			let l:snip = ''
			let l:prev_idx = 0
			if len(s:args_pos[pos_idx]) == 0
				let l:snip_idx = 1
			else
				let l:snip_idx = 2
			endif
			for elt in s:args_pos[pos_idx]
				let l:snip .= current_snip[l:prev_idx : elt[0] - 1] . '${' . l:snip_idx . ':' . current_snip[elt[0] : elt[1] - 1] . '}'
				let l:snip_idx += 1
				let l:prev_idx = elt[1]
			endfor
			let l:snip .= current_snip[l:prev_idx : ] . '${' . l:snip_idx . '}'
			"put =getpos('.')[2]
			let &undolevels = &undolevels " create new undo point
			call snipMate#expandSnip("${1}".l:snip, getpos('.')[2] + 1)
			call snippets#garbas_snipmate#reset()
			return
		endif
		let l:pos_idx += 1
	endfor
	call snippets#garbas_snipmate#reset()
	"execute "insert" "<tab>"
	"call feedkeys("\<Tab>", 't')
	"call snipMate#TriggerSnippet()
endfunction

function! snippets#garbas_snipmate#reset()
	let s:fullname = []
	let s:args_pos = []
endfunction
