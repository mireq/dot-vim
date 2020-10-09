"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        _____
" ___   ____(_)______ ___
" __ | / /_  /__  __ `__ \
" __ |/ /_  / _  / / / / /
" _____/ /_/  /_/ /_/ /_/
"
"
" Maintainer: Miroslav Bendík
" Version: 0.2
" Last Change: 15.02.2015
" Sections:
" -------------------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" No compatible with vi
set nocompatible

" Enable vimrc
set exrc

" Enable file type detection
filetype on

" Disable help
noremap <F1> ""

" Navigation with C-up / C-down
map <C-down> gj
map <C-up> gk

" Remap home
map <silent> <Home> ^
imap <silent> <Home> <C-O>^

" Better line breaks
set breakindent

" Enable history
set history=1000

" Enable : in keywords
set iskeyword=@,~,48-57,_,192-255

" Enable hidden buffers
set hidden

" Disable visual bell
set noerrorbells
set novisualbell
set t_vb=

" Set grep prorgram
set grepprg=grep\ -nH\ $*

" Set visible lines / columns before and after cursor
set scrolloff=3
set sidescroll=5

" Default text width to 80 chars
set textwidth=80
set colorcolumn=80
set wrap

" Mouse
set mouse=a
set mousehide
set mousemodel=popup

" Integrate clipboard
set clipboard=unnamed,unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Build
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Run make
map <F9> :make -j 2<CR>

" Auto jump to first error
set cf

"let errormarker_erroricon = "/usr/share/icons/oxygen/16x16/status/dialog-error.png"
"let errormarker_warningicon = "/usr/share/icons/oxygen/16x16/status/dialog-warning.png"
let &errorformat="%-GIn file included from %f:%l:%c\\,,%-GIn file included from %f:%l:%c:,%-Gfrom %f:%l\\,,-Gfrom %f:%l:%c\\,," . &errorformat
set errorformat+=%D%*\\a[%*\\d]:\ Entering\ directory\ `%f'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NeoBundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundle 'project.tar.gz', {'lazy': 1, 'autoload': {'mappings': ['<F8>']}}
NeoBundle 'a.vim', {'lazy': 1, 'autoload': {'mappings': ['<F12>']}}
NeoBundle 'tagbar', {'lazy': 1, 'autoload': {'mappings': ['<F11>']}}
NeoBundle 'gundo.vim', {'lazy': 1, 'autoload': {'mappings': ['<F7>']}}
NeoBundle 'vim-bufferlist', {'lazy': 1, 'autoload': {'mappings': ['<F3>']}}
NeoBundle 'killor', {'lazy': 1, 'autoload': {'filetypes': 'python'}}
NeoBundle 'vim-snippets', {'lazy': 1, 'autoload': { 'on_source': ['ultisnips'] } }
NeoBundle 'ultisnips', { 'lazy': 1, 'autoload' : { 'insert': 1 } }
"NeoBundle 'YouCompleteMe', {'lazy': 1, 'augroup': 'youcompletemeStart', 'autoload': { 'insert': 1, }, 'build': { 'unix': 'git submodule update --init --recursive;./install.py --clang-completer', }, 'build_commands': 'cmake', 'disabled': !has('python'), 'vim_version': '7.3.584', 'depends': 'ultisnips'}
NeoBundle 'YouCompleteMe'
NeoBundle 'ctrlp.vim', {'lazy': 1, 'autoload': {'commands': 'CtrlP', 'mappings': '<c-p>',}}
NeoBundle 'delimitMate', { 'lazy': 1, 'autoload' : { 'insert': 1 } }
NeoBundle 'emmet-vim', {'lazy': 1, 'autoload': {'filetypes': ['html', 'htmldjango']}}
NeoBundle 'ale', {'lazy': 1, 'autoload': {'filetypes': ['python', 'javascript', 'dart']}}
NeoBundle 'powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'python-mode', {'lazy': 1, 'autoload': {'filetypes': ['python']}}
NeoBundle 'vim-css3-syntax', {'lazy': 1, 'autoload': {'filetypes': ['css', 'scss']}}
NeoBundle 'vim-signify', { 'lazy': 1, 'autoload' : { 'insert': 1 } }
NeoBundle 'vim-fugitive'
NeoBundle 'vim-javascript', {'lazy': 1, 'autoload': {'filetypes': ['javascript', 'html']}}
NeoBundle 'vim-indent-guides'
NeoBundle 'nerdcommenter', { 'lazy': 1, 'autoload' : { 'insert': 1 } }
NeoBundle 'vim-browser-reload-linux'
NeoBundle 'editorconfig'
NeoBundle 'ctrlp-py-matcher'
NeoBundle 'rainbow', {'lazy': 1, 'autoload': {'filetypes': ['dart']}}
NeoBundle 'vim-glsl'

NeoBundle 'dart-vim-plugin'
NeoBundle 'vim-flutter'

" NeoBundle 'vim-fugitive', { 'lazy': 1, 'autoload': { 'commands': ['Gstatus', 'Gcommit', 'Gwrite', 'Git', 'Git!', 'Gcd', 'Glcd', 'Ggrep', 'Glog', 'Gblame', 'Gdiff'] } }

call neobundle#end()

filetype indent on
filetype plugin on

" NeoBundleCheck

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Saving
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Write after buffer leave
" set autowrite

" Backup
set backup
set backupdir=~/.vim/backup,.,~/

" Tmp directory
set directory=~/.vim/tmp,~/tmp,.,/tmp

" Ask before close
set confirm

" Viminfo
set viminfo='50,\"500
"            |    |
"            |    + Maximum number of files for each register
"            + Save max 50 files

" Persistend undo
set undodir=~/.vim/undodir
set undofile
set undolevels=2048
set undoreload=65538

" Reload file, preserve history
command! Reload %d|r|1d

" Save with ctrl+s
map <C-S> :w<CR>
imap <C-S> <ESC><C-S>

" HTML
let html_number_lines = 0
let use_xhtml = 1
let html_use_css = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildmenu
set wildchar=<Tab>
set wildmode=longest:full,full
set wildignore=Ui_*,*.git,*.pyc,*.qmlc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formating
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set formatoptions=croq1
"                 |||||
"                 ||||+ Not break lines in insert mode
"                 |||+ Formatting with gq
"                 ||+ Insert comment leader after 'o'
"                 |+ Insert comment leader after <Enter>
"                 + Auto wrap comments using textwidth

" Wrap on end
set wrapmargin=0
set linebreak

" Copy indent structure
set copyindent
set preserveindent

" Round to tabs
set shiftround

" Use tabs
set tabstop=3
set shiftwidth=3

" Indent for language
set smartindent

set display=lastline

" Adjust indent
xnoremap <Tab> >gv
au BufEnter * xnoremap <Tab> >gv
au InsertLeave * xnoremap <Tab> >gv
xmap <BS> <gv

command! RetabIndents call RetabIndents()
command! Python2Completer :YcmCompleter RestartServer /usr/bin/python2
command! Python3Completer :YcmCompleter RestartServer /usr/bin/python3

func! RetabIndents()
	execute '%!unexpand --first-only -t '.&ts
endfunc

func! ReformatHTML() range
	let content = join(getline(a:firstline, a:lastline), "\n")
	let baka = @a
	let baks = @/
	let @a = content
	silent execute 'new'
	silent execute 'normal "ap'
	silent execute 'set filetype=html'
	silent execute ':%s/^\s*//g'
	silent execute ':%s/\s*$//g'
	silent execute ':%s/<[^>]*>/\r&\r/g'
	silent execute ':%g/^$/d'
	silent execute 'normal 1G'
	silent execute 'normal VG'
	silent execute 'normal ='
	silent execute 'normal 1G'
	silent execute 'normal VG'
	silent execute 'normal "ay'
	silent execute ':bdelete!'
	silent execute a:firstline.','.a:lastline.'d'
	silent execute 'normal "aP'
	let @a = baka
	let @/ = baks
endfunc

command! -range=% ReformatHTML <line1>,<line2>call ReformatHTML()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

imap \... …

" Better completion for {
inoremap {<CR>  {<CR>}<Esc>O

" Disable delimitmate for file types
let delimitMate_excluded_ft = "mail,txt,htmldjango"

" Wrap
vmap ( <ESC>`>a)<ESC>`<i((<ESC>gv
vmap [ <ESC>`>a]<ESC>`<i[[<ESC>gv
vmap { <ESC>`>a}<ESC>`<i{{<ESC>gv
vmap \' <ESC>`>a''<ESC>`<i''<ESC>gv
vmap \" <ESC>`>a""<ESC>`<i""<ESC>gv
vmap ; <ESC>`>a“<ESC>`<i„<ESC>gv

" Reverse chars
vmap \rv c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable line number display
set number

" Hide conceal chars
set conceallevel=2

" Enable statusline
set laststatus=2

" Show title in terminal window
set title

" Show matching brackets
set showmatch

" Highlidhgt search
set hlsearch

" Disable toolbars
if has("gui_running")
	set guioptions-=T
endif

" Enable syntax
syntax on

" Fast tty (no optimization)
set ttyfast

" Fast regexp engine
set regexpengine=1

" Automatic sync (slow!)
" autocmd BufEnter * syntax sync fromstart

" Max 500 lines for syntax
" syntax sync minlines=500

" Colorscheme
if (&t_Co == 256) || has("gui_running")
	colorscheme mirec
else
	colorscheme default
endif

" Split symbols
if has("multi_byte")
	set fillchars=stl:\ ,stlnc:\ ,vert:┆,fold:-,diff:-
else
	set fillchars=stl:\ ,stlnc:\ ,vert:\|,fold:-,diff:-
endif

" Whitespace symbols
if has("multi_byte")
	set lcs=tab:\⁝\ ,trail:•,extends:>,precedes:<,nbsp:¤"
	let &sbr = nr2char(8618).' '
else
	set lcs=tab:>\ ,extends:>,precedes:<,trail:-
	let &sbr = '+++ '
endif

function! UpdateLcs()
	if (&previewwindow)
		setlocal nolist
	endif
	if (bufname('%') == "__BUFFERLIST__")
		setlocal nolist
	endif
endfunction

autocmd BufEnter,BufWinEnter,WinEnter,CmdwinEnter * call UpdateLcs()
set list

" Highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter *{cpp,h,hpp,php,python,css,js,html,xhtml,htm} match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd InsertEnter *{cpp,h,hpp,php,python,css,js,html,xhtml,htm} match ExtraWhitespace /\s\+\%#\@<!$\| \+\ze\t\%#\@<!/
autocmd InsertLeave *{cpp,h,hpp,php,python,css,js,html,xhtml,htm} match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinLeave *{cpp,h,hpp,php,python,css,js,html,xhtml,htm} call clearmatches()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set completeopt=menuone,menu
"               |       |
"               |       + Display popup
"               + Display when single option

" Hide help when cursor moved
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Set cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_EI = "\<Esc>[2 q"
if v:version > 704 || v:version == 704 && has('patch687')
	let &t_SR = "\<Esc>[4 q"
end

" Complete shortcuts
imap <C-Space> <C-X><C-I>
imap <Nul> <C-X><C-I>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if neobundle#tap('project.tar.gz') "{{{
	function! neobundle#tapped.hooks.on_post_source(bundle)
		nmap <F8> <Plug>ToggleProject
	endfunction

	let g:proj_flags="imstvcS"
	"                 |||||||
	"                 ||||||+ Sort
	"                 |||||+ Close after select
	"                 ||||+ Vimgrep instead of grep
	"                 |||+ Window size
	"                 ||+ Syntax
	"                 |+ Ctrl+W O
	"                 + File names in status line
	call neobundle#untap()
endif
"}}}

if neobundle#tap('YouCompleteMe') "{{{
	autocmd FileType python nmap <buffer> <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>

	let g:ycm_key_list_select_completion = ['<Down>']
	let g:ycm_key_list_previous_completion = ['<Up>']
	let g:ycm_confirm_extra_conf=0
	call neobundle#untap()
endif
"}}}

if neobundle#tap('a.vim') "{{{
	autocmd FileType c,cpp map <buffer> <F12> :A<CR>
	autocmd FileType c,cpp imap <buffer> <F12> <ESC>:A<CR>
	call neobundle#untap()
endif
"}}}

if neobundle#tap('tagbar') "{{{
	function! neobundle#tapped.hooks.on_post_source(bundle)
		nmap <F11> :TagbarToggle<CR>
	endfunction
	call neobundle#untap()
endif
"}}}

if neobundle#tap('gundo.vim') "{{{
	let g:gundo_prefer_python3=1
	function! neobundle#tapped.hooks.on_post_source(bundle)
		nmap <F7> :GundoToggle<CR>
	endfunction
	call neobundle#untap()
endif
"}}}

if neobundle#tap('vim-bufferlist') "{{{
	function! neobundle#tapped.hooks.on_post_source(bundle)
		map <silent> <F3> :call BufferList()<CR>
	endfunction
	call neobundle#untap()
endif
"}}}

if neobundle#tap('ultisnips') "{{{
	"function! neobundle#hooks.on_source(bundle)
	"function! neobundle#tapped.hooks.on_post_source(bundle)
	"	silent! call UltiSnips#FileTypeChanged()
	"	au BufEnter * call UltiSnips#FileTypeChanged()
	"endfunction
	let g:UltiSnipsExpandTrigger="<TAB>"
	let g:UltiSnipsJumpForwardTrigger="<TAB>"
	let g:UltiSnipsSnippetDirectories = ['.vim/UltiSnips', 'UltiSnips']
	let g:UltiSnipsTriggerInVisualMode=0
	call neobundle#untap()
endif
"}}}

if neobundle#tap('ale') "{{{
	let g:ale_lint_on_text_changed="never"
	let g:ale_lint_on_enter=0
	let g:ale_lint_on_filetype_changed=0
	let g:ale_lint_on_save=1
	let g:ale_lint_on_insert_leave=0
endif
"}}}

if neobundle#tap('python-mode') "{{{
	let g:pymode_options = 0
	let g:pymode_rope = 1
	let g:pymode_rope_completion = 0
	let g:pymode_rope_complete_on_dot = 0
	let g:pymode_rope_completion_bind = '<C-Shift-Space>'
	let g:pymode_indent = 0
	let g:pymode_syntax = 0
	let g:pymode_lint = 0
	let g:pymode_folding = 0
	let g:pymode_rope_autoimport = 1
endif
"}}}

if neobundle#tap('vim-indent-guides') "{{{
	let g:indent_guides_auto_colors = 0
	let g:indent_guides_enable_on_vim_startup = 1
	let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'project']
	let g:indent_guides_space_guides = 0
	let g:indent_guides_start_level = 1
	let g:indent_guides_indent_levels = 10
	call neobundle#untap()
endif
"}}}

if neobundle#tap('vim-javascript') "{{{
	let g:javascript_conceal = 1
	let g:javascript_conceal_function   = "∫"
	let g:javascript_conceal_null       = "Ø"
	let g:javascript_conceal_this       = "@"
	let g:javascript_conceal_return     = "❱"
	let g:javascript_conceal_undefined  = "¿"
	let g:javascript_conceal_NaN        = "Ṉ"
	let g:javascript_conceal_prototype  = "¶"
	let g:javascript_conceal_static     = "•"
	let g:javascript_conceal_super      = "Ω"
endif
"}}}

if neobundle#tap('ctrlp.vim') "{{{
	"let g:ctrlp_use_caching = 0
	let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
	let g:ctrlp_follow_symlinks = 1
	let g:ctrlp_working_path_mode = 'raw'
	if executable('ag')
		let g:ctrlp_user_command = 'ag --ignore-case --nogroup --hidden --follow
			\ -U -p ~/.ignore
			\ -l -m 50000
			\ %s -g ""'
	endif
endif
"}}}

if neobundle#tap('ctrlp-py-matcher') "{{{
	let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif
"}}}

if neobundle#tap('vim-flutter') "{{{
	" Enable Flutter menu
	"call FlutterMenu()
	
	" Some of these key choices were arbitrary;
	" it's just an example.
	nnoremap <leader>fa :FlutterRun<cr>
	nnoremap <leader>fq :FlutterQuit<cr>
	nnoremap <leader>fr :FlutterHotReload<cr>
	nnoremap <leader>fR :FlutterHotRestart<cr>
	nnoremap <leader>fD :FlutterVisualDebug<cr>
endif
"}}}
"
"}}}

if neobundle#tap('rainbow') "{{{
	let g:rainbow_active = 1
	let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['45', '40', '190', '208', '196', '200', '141'],
	\	'guis': [''],
	\	'cterms': [''],
	\	'operators': '_,_',
	\	'contains_prefix': 'TOP',
	\	'parentheses_options': '',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'css': 0,
	\		'sh': 0,
	\	}
	\}
endif
"}}}


"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#1c1c1c   ctermbg=234
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=#262626   ctermbg=235

function Ultisnips_get_current_python_class()
	let l:retval = ""
	let l:line_declaring_class = search('^class\s\+', 'bnW')
	if l:line_declaring_class != 0
		let l:nameline = getline(l:line_declaring_class)
		let l:classend = matchend(l:nameline, '\s*class\s\+')
		let l:classnameend = matchend(l:nameline, '\s*class\s\+[A-Za-z0-9_]\+')
		let l:retval = strpart(l:nameline, l:classend, l:classnameend-l:classend)
	endif
	return l:retval
endfunction

function Ultisnips_get_current_python_method()
	let l:retval = ""
	let l:line_declaring_method = search('\s*def\s\+', 'bnW')
	if l:line_declaring_method != 0
		let l:nameline = getline(l:line_declaring_method)
		let l:methodend = matchend(l:nameline, '\s*def\s\+')
		let l:methodnameend = matchend(l:nameline, '\s*def\s\+[A-Za-z0-9_]\+')
		let l:retval = strpart(l:nameline, l:methodend, l:methodnameend-l:methodend)
	endif
	return l:retval
endfunction




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings for file types
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" cpp
function! EnhanceCppSyntax()
	syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
endfunction
autocmd Syntax cpp call EnhanceCppSyntax()
autocmd FileType c,cpp nmap <F5> "lYml[[kw"cye'l
autocmd FileType c,cpp nmap <F6> :set paste<CR>ma:let @n=@/<CR>"lp==:s/\<virtual\>\s*//e<CR>:s/\<static\>\s*//e<CR>:s/\<explicit\>\s*//e<CR>:s/\s*=\s*[^,)]*//ge<CR>:let @/=@n<CR>'ajf(b"cPa::<Esc>f;s<CR>{<CR>}<CR><Esc>kk:nohlsearch<CR>:set nopaste<CR>
autocmd FileType c,cpp set foldmethod=indent
autocmd FileType c,cpp set foldlevel=6

" python
autocmd BufNewFile *.py execute "set paste" | execute "normal i# -*- coding: utf-8 -*-\r" | execute "set nopaste"
autocmd FileType python set completeopt=menuone,menu,preview
autocmd FileType python setlocal complete+=k
autocmd FileType python setlocal isk+=".,("
autocmd BufRead *.py setlocal makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
au BufNewFile,BufRead *.jinja set ft=htmldjango

" Disable indentkeys
set indentkeys-=<:>

let g:python_recommended_style=0

" javascript
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript set completefunc=javascriptcomplete#CompleteJS

" html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set completefunc=htmlcomplete#CompleteTags
autocmd FileType html set filetype=htmldjango
autocmd FileType htmldjango vmap \tr <ESC>`>a'' %}<ESC>`<i{{% trans ''<ESC>

" css
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set completefunc=csscomplete#CompleteCSS

" common completion
autocmd FileType c,cpp,java,php,python,html,css,javascript imap <C-Space> <C-X><C-O>
autocmd FileType c,cpp,java,php,python,html,css,javascript imap <Nul> <C-X><C-O>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Utility
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Convert vimrc to HTML
" Link to section: *> Section name
" Section: => Section name
function! VimrcTOHtml()
	TOhtml
	try
		silent exe '%s/&quot;\(\s\+\)\*&gt; \(.\+\)</"\1<a href="#\2" style="color: #bdf">\2<\/a></g'
	catch
	endtry

	try
		silent exe '%s/&quot;\(\s\+\)=&gt; \(.\+\)</"\1<a name="\2" style="color: #fff">\2<\/a></g'
	catch
	endtry

	exe ":write!"
	exe ":bd"
endfunction

function! ReformatXml()
	%!xmllint --format --recover --encode utf-8 - 2>/dev/null
endfunction

function! ReplaceDiacritic()
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ľ/\\&#317;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Š/\\&#352;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ť/\\&#356;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ž/\\&#381;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ľ/\\&#318;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/š/\\&#353;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ť/\\&#357;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ž/\\&#382;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ŕ/\\&#340;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ĺ/\\&#313;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Č/\\&#268;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ě/\\&#282;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ď/\\&#270;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ň/\\&#327;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ř/\\&#344;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ů/\\&#366;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ŕ/\\&#341;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ľ/\\&#314;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/č/\\&#269;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ě/\\&#283;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ď/\\&#271;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ň/\\&#328;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ř/\\&#345;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ô/\\&#244;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ô/\\&#212;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ý/\\&#221;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ý/\\&#253;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Á/\\&Aacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/á/\\&aacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/É/\\&Eacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/é/\\&eacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Í/\\&Iacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/í/\\&iacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ó/\\&Oacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ó/\\&oacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/Ú/\\&Uacute;/g"
	execute "silent! " . a:firstline . "," . a:lastline . "s/ú/\\&uacute;/g"
endfunction

function! MailSettings()
	setlocal textwidth=0
	setlocal comments+=b:--
	setlocal formatoptions+=tcqan
	" setlocal nosi nocin
	" setlocal comments=n:>
	" setlocal equalprg=fmt
	" Odstránenie starých podpisov
	" autocmd BufReadPost /tmp/mutt* :g/^> -- $/.;/^$/-d
	try | :%s/>> -- $\n\(>> .*\n\)*// | catch | endtry
	try | :%s/> -- $\n\(> .*\n\)*// | catch | endtry
	" Zmena zlého formátu citácií
	try | :%s/^> >/>> / | catch | endtry
	try | :%s/^>> >/>>> / | catch | endtry
	try | :%s/^>>> >/>>>> / | catch | endtry
	" Odstránenie prebytočných riadkov
	try | %s/\(^>\n\)\{2,}/>\r/g | catch | endtry
	" Presun nad pätičku
	normal 0G
	normal 8k

	setlocal ignorecase infercase
	"setlocal wrap
	setlocal nocp
	let @/ = '^>[ \t]*$'

	let b:url_nr = 1
	vmap <buffer> . c> [[...]<Esc>
	" insert mode mappings
	imap <buffer> <C-l> <ESC>:call MailInsertURL()<CR>
	"map <buffer> <F2> :%g/^>\( \?>\)/d<CR>
	"map <buffer> <F3> :%g/^>\( \?>\)\{2}/d<CR>
	"map <buffer> <F4> :%g/^>\( \?>\)\{3}/d<CR>
	map <buffer> <leader>q :%s/=\(\x\x\)/\=nr2char(str2nr(submatch(1),16))/g<CR>

	function! MailInsertURL()
		set paste
		let l:url = input("URL: ")
		execute "normal a[".b:url_nr."]\<Esc>mzG"
		try
			execute "?^-- $"
			if b:url_nr == 1
				normal 0k
			else
				normal k
			endif
		catch
		endtry
		execute "normal o[".b:url_nr."] ".l:url."\<Esc>`za"
		let b:url_nr += 1
		set nopaste
	endfunction

endfunction

au BufReadPost * if getfsize(bufname("%")) > 512*1024 | set syntax= | endif

"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"let g:rbpt_colorpairs = [
"      \ ['brown',       'RoyalBlue3'],
"      \ ['Darkblue',    'SeaGreen3'],
"      \ ['darkgray',    'DarkOrchid3'],
"      \ ['darkgreen',   'firebrick3'],
"      \ ['darkcyan',    'RoyalBlue3'],
"      \ ['darkred',     'SeaGreen3'],
"      \ ['darkmagenta', 'DarkOrchid3'],
"      \ ['brown',       'firebrick3'],
"      \ ['gray',        'RoyalBlue3'],
"      \ ['196',         '#ff0000'],
"      \ ['200',         '#ff00df'],
"      \ ['39',          '#00afff'],
"      \ ['87',          '#5fffff'],
"      \ ['118',         '#87ff00'],
"      \ ['229',         '#ffffaf'],
"      \ ['255',         '#eeeeee'],
"      \ ]

function! CleanCSS()
	try
		silent execute "%s/\\t\\+$//g"
	catch
	endtry

	try
		silent execute "%s/[ ]\\+$//g"
	catch
	endtry

	try
		silent execute "%s/\\([^ ]\\){/\\1 {/g"
	catch
	endtry

	try
		silent execute "%s/:\\([^ ]\\)\\(.*\\);/: \\1\\2;/"
	catch
	endtry
endfunction

function! WriteCreatingDirs()
	execute 'normal !mkdir -p %:h'
	execute 'normal write'
endfunction
command W call WriteCreatingDirs()

let c_no_curly_error = 1
