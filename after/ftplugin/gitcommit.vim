function! s:insertTime()
	let s:tt=system("git timetrack -c")
	let s:hours=system("grep hours||echo -ne '0 hours'", s:tt)
	let s:minutes=system("grep minutes||echo -ne '0 minutes'", s:tt)
	let s:hours=system("tr \"\\n\" \" \"|sed -e 's/.*\\(\\([0-9]\\+\\) hours\\).*/\\2/g'", s:hours)
	let s:minutes=system("tr \"\\n\" \" \"|sed -e 's/.*\\(\\([0-9]\\+\\) minutes\\).*/\\2/g'", s:minutes)
	let s:minutes=system("sed -e 's/^[0-9]$/0\\0/g'", s:minutes)
	let s:reg = @a
	let @a=s:hours . ":" . s:minutes
	execute "normal! \"ap"
	let @a=s:reg
endfunction

nnoremap <buffer> <C-t> :call <SID>insertTime()<CR>
