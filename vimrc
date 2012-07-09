"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        _____
" ___   ____(_)______ ___
" __ | / /_  /__  __ `__ \
" __ |/ /_  / _  / / / / /
" _____/ /_/  /_/ /_/ /_/
"
"
" Maintainer: Miroslav Bendík
" Version: 0.1
" Last Change: 8.07.2012 09:30:00
" Sections:
" -------------------------------------------------------------
" *> Načítanie pathogen-u
" *> Základné nastavenia
"   *> Ukladanie
"   *> Nastavenie menu
" *> Formátovanie
" *> Zobrazenie
"   *> Stavový riadok
"   *> Myš
"   *> Zalamovanie riadkov
"   *> Zobrazovanie netlačiteľných znakov
" *> Automatické dopĺňanie
"   *> Tagy
" *> Skratky
"   *> Skratky pre pluginy
" *> Export do HTML
" *> Rôzne
"   *> Optimalizácia výkonu
"   *> Figlet
" *> Nastavenia pluginov
" *> Nastavenia pre konkrétne typy súborov
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Načítanie pathogen-u
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath+=$HOME/.vim/bundle/vim-pathogen/
runtime autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Základné nastavenia
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Zákaz používania kurzorových kláves
nnoremap  <Up> ""
"nnoremap! <Up> <Esc>
nnoremap  <Down> ""
"nnoremap! <Down> <Esc>
nnoremap  <Left> ""
"nnoremap! <Left> <Esc>
nnoremap  <Right> ""
"nnoremap! <Right> <Esc>
"
imap \... …
noremap <F1> ""
map <C-down> gj
map <C-up> gk

" Nastavenie nekompatibilného režimu
set nocompatible

" Hľadanie nastavení v lokálnych súboroch
"set exrc

" Zapnutie zvýrazňovania syntaxe
syntax on

" Podpora automatickej detekcie typu súboru
filetype on

" Podpora automatického načítavania pluginov pre daný typ súboru
filetype plugin on

" Podpora automatického načítavania odsadzovacieho skriptu
filetype indent on

" Nastavenie histórie na 1000 príkazov
set history=1000

" Zapneme zobrazovanie čísel riadkov
set number

" Zapneme zabaľovanie znakov
set conceallevel=2

" Zapneme možnosť používania : v kľúčových slovách jazyka
"set iskeyword=@,~,48-57,_,192-255, "
set iskeyword=@,~,48-57,_,192-255

" Automatický presun na hľadaný výraz počas písania
set incsearch

" Pamätá si históriu undo a umožní prepínanie neuložených bufferov
set hidden

" Vypnutie pípnutí pri chybe
set noerrorbells
set novisualbell
set t_vb=

" Nastavenie príkazu pre grepovanie súborov
set grepprg=grep\ -nH\ $*

" Nastavenie počtu riadkov viditeľných nad a pod riadkom s kurzorom
set scrolloff=3

" Nastavenie počtu stĺpcov viditeľných pred a za kurzorom
set sidescroll=5

" Nastavenie šírky riadku na 80 znakov
set textwidth=80

" Nastavenie zvýraznenia dlhých riadkov
set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Ukladanie
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatický zápis pri prechode na iný buffer
"set autowrite

" Automatická záloha súborov
set backup

" Automaticky zálohovať do nasledujúcich adresárov
set backupdir=~/.vim/backup,.,~/

" Nastavenie dočasného adresára
set directory=~/.vim/tmp,~/tmp,.,/tmp

" Namiesto hlásenia chyby pri ukončení editora sa spýta, či majú byť zmeny
" uložené
set confirm

" Nastavenie súboru viminfo
set viminfo='50,\"500
"           |   |
"           |   + Maximálna veľkosť registru - 500 riadkov
"           + Ukladanie informácii o max. 50. naposledy editovaných súboroch

" Nastavenie perzistentného undo
" Adresár pre ukladanie undo
set undodir=~/.vim/undodir
" Nastavenie názvu súboru pre undo - automaticky
set undofile
" Počet zmien, ktoré sa dajú vrátiť
set undolevels=1024
" Maximálny počet riadkov, ktoré sa dajú uložiť do undo pri reloade bufferu
set undoreload=65538

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Nastavenie menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Zobrazenie jednoduchého menu pri dopĺňaní s niekoľkými existujúcimi možnosťami
set wildmenu

" Na dopĺňanie príkazov sa používa klávesa tab
set wildchar=<Tab>

" Doplnenie čo najväčšej časti príkazu
set wildmode=longest:full,full

" Ignorovanie dopĺňania Ui_*
set wildignore=Ui_*


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formátovanie
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nastavenie automatického formátovania pri písaní
set formatoptions=croq1
"                 |||||
"                 ||||+ Zákaz zalamovania jednoznakových slov
"                 |||+ Automatické sformátovanie pri gq
"                 ||+ Automatické vloženie komentára pri použití o/O
"                 |+ Automatické vloženie komentára na nový riadok
"                 + Automatické zalamovanie v komentároch

" Kopírovanie štruktúry odsadenia pri automatickom odsadení
set copyindent

" Ponechanie štruktúry odsadenia pri jeho zmene
set preserveindent

" Zaokrúhlenie odsadenia na niekoľko tabov
set shiftround

" Nenahradzovať tabulátor medzerami
set noexpandtab

" Nastavenie zobrazovanej šírky tabulátora
set tabstop=3

" Počet vložených medzier pri zväčšení odsadenia (automaticky sa prevedú na
" tabulátor)
set shiftwidth=3

" Automatické zväčšenie / zmenšenie odsadenia podľa zvyklostí jazyka
set smartindent

" Zobrazenie čo najväčšej časti posledného riadku
set display=lastline

" Odsadenie používajúce tab-y
function! TabIndent() range
	let cl = a:firstline
	while (cl <= a:lastline)
		execute "normal 0i\<Tab>"
		execute "normal j"
		let cl = cl + 1
	endwhile
endfunction

" Zrušenie odsadenia používajúceho tab-y
function! TabUnindent() range
	let cl = a:firstline
	while (cl <= a:lastline)
		if indent(cl) >= &tabstop
			execute "normal 0"
			let end = indent(cl) - &tabstop
			while indent(cl) > end
				execute "normal x"
			endwhile
		endif
		execute "normal j"
		let cl = cl + 1
	endwhile
endfunction

" Odsadenie klávesou tab vo vizuálnom režime
xnoremap <Tab> >gv
au BufEnter * xnoremap <Tab> >gv

" Zrušenie odsadenia klávesou backspace vo vizuálnom režime
xnoremap <BS> <gv

" Zmena odsadenia na tabulátory
command! RetabIndents call RetabIndents()

func! RetabIndents()
	execute '%!unexpand --first-only -t '.&ts
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Zobrazenie
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim bude nastavovať titulok okna
set title

" Zobrazenie párových zátvoriek
set showmatch

" Zvýrazňovať vyhľadávanie
set hlsearch

" Vypnutie toolbaru z GUI
if has("gui_running")
	set guioptions-=T
endif

if (&t_Co == 256) || has("gui_running")
	colorscheme mirec
else
	colorscheme default
endif

" Zobrazenie symbolov pre oddelenie okien
if has("multi_byte")
	set fillchars=stl:\ ,stlnc:\ ,vert:┆,fold:-,diff:-
else
	set fillchars=stl:\ ,stlnc:\ ,vert:\|,fold:-,diff:-
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Stavový riadok
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Zobrazovanie stavového riadku vždy
set laststatus=2

" Vráti názov tagu pre stavový riadok
function! TagStatus()
	if bufname('%') == ''
		return ""
	else
		if exists('loaded_taglist')
			return Tlist_Get_Tagname_By_Line()
		else
			return ""
		endif
	endif
endfunction

if (&t_Co == 256) || has("gui_running")
	" Symboly s podporou opatchovaného fontu
	let g:Powerline_symbols="fancy"
	let g:Powerline_theme="default"
	" Pridanie informácie o prázdnych riadkoch
	call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

	" Zmena zvýrazňovania chybného bieleho miesta
	function! Powerline#Functions#GetWSMarker() " {{{
		if ! exists("b:statusline_trailing_space_warning")
			if search('\s\+$\| \+\ze\t', 'nw') != 0
				let b:statusline_trailing_space_warning = ' … '
			else
				let b:statusline_trailing_space_warning = ''
			endif
		endif
		return b:statusline_trailing_space_warning
	endfunction " }}}
else
	" Nastavenie stavového riadku
	set statusline=%<%f\ \%y\ %h%w%m%r\ %*
	"               | |    |   | | | |
	"               | |    |   | | | + Len na čítanie
	"               | |    |   | | + Modifikovaný
	"               | |    |   | + Náhľadové okno
	"               | |    |   + Help okno
	"               | |    + Typ súboru
	"               | + Súbor
	"               + Indikátor pretečenia textu stavového riadku
	"set statusline+=%(\{%{Tlist_Get_Tagname_By_Line()}\}%)\ %*
	"                     |
	"                     + Zobrazenie aktuálneho tagu
	set statusline+=%(\{%{TagStatus()}\}%)\ %*
	"                     |
	"                     + Zobrazenie aktuálneho tagu
	set statusline+=%=%-13.(%l/%L,%c%V%)\ %P\ %*
	"                | |     |  |  | |     |
	"                | |     |  |  | |     + Percentuálne vyjadrenie polohy v súbore
	"                | |     |  |  | + Virtuálne číslo stĺpca
	"                | |     |  |  + Číslo stĺpca
	"                | |     |  + Celkový počet riadkov
	"                | |     + Číslo riadku
	"                | + Minimálna šírka nasledujúceho výrazu 13 znakov
	"                + Prechod na zarovnanie vpravo
	set statusline+=%05.(%{VimBuddy()}%)\ %*
	"                |     |
	"                |     + Smajlík
	"                + Minimálna šírka 5 znakov


	" Žltý stavový riadok počas editácie
	autocmd InsertEnter * hi StatusLine term=NONE cterm=bold ctermbg=0 ctermfg=3 guifg=#ffff00 guibg=#000000 gui=bold

	" Zelený stavový riadok po skončení editácie
	autocmd InsertLeave * hi StatusLine term=NONE cterm=bold ctermbg=0 ctermfg=2 guifg=#00ff00 guibg=#000000 gui=bold

	" Nastavenie stavového riadku po spustení
	hi StatusLine term=NONE cterm=bold ctermbg=0 ctermfg=2 guifg=#00ff00 guibg=#000000 gui=bold
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Myš
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Aktivovanie podpory myši vo všetkých režimoch
set mouse=a

" Skrytie kurzora počas písania
set mousehide

" Zobrazenie vyskakovacieho menu pri stlačení pravého myšítka
set mousemodel=popup


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Zalamovanie riadkov
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Budeme zalamovať až úplne na konci riadku
set wrapmargin=0

" Budeme zobrazovať zalomené riadky i keď v skutočnosti nebude vložené EOL
set linebreak


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Zobrazovanie netlačiteľných znakov
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nastavenie zobrazovania netlačiteľných znakov
" a zobrazenie ↪ na ďalšom riadku ak riadok prekračuje šírku okna
if has("multi_byte")
	set lcs=tab:\»\ ,trail:•,extends:>,precedes:<,nbsp:¤"
	let &sbr = nr2char(8618).' '
else
	set lcs=tab:>\ ,extends:>,precedes:<,trail:-
	let &sbr = '+++ '
endif

" Zapneme zobrazovanie netlačiteľných znakov
set list

" Zvýraznenie riadkov, ktorých dĺžka prekračuje textwidth (môže byť pomalé)
"au BufWinEnter * if &textwidth > 8
"\ | let w:m1=matchadd('WarnLength', printf('\%%<%dv.\%%>%dv', &textwidth+1, &textwidth-8), -1)
"\ | let w:m2=matchadd('OverLength', printf('\%%>%dv.\+', &textwidth), -1)
"\ | endif
" Zvýrazne zbytočných medzier
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter *{cpp,h,hpp,php,python,css,js} match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd InsertEnter *{cpp,h,hpp,php,python,css,js} match ExtraWhitespace /\s\+\%#\@<!$\| \+\ze\t\%#\@<!/
autocmd InsertLeave *{cpp,h,hpp,php,python,css,js} match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinLeave *{cpp,h,hpp,php,python,css,js} call clearmatches()


" Zvýraznenie aktuálneho riadku (môže byť pomalé)
"au WinLeave * set nocursorline
"au WinEnter * set cursorline
" Zobrazenie aktuálneho riadku aj stĺpca (je pomalé!)
"au WinEnter * set cursorline cursorcolumn
"set cursorline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Automatické dopĺňanie
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nastavenie vlastností doplňovania pre C++
let g:clang_use_library=1
let g:clang_library_path="/usr/lib"
let g:clang_snippets=1
let g:clang_snippets_engine='ultisnips'
let g:clang_conceal_snippets=1
let g:clang_periodic_quickfix=1
let g:clang_hl_errors=1

set completeopt=menuone,menu
"set completeopt=menuone,menu,preview
"               |       |    |
"               |       |    + Použivať náhľadové okno
"               |       + Zobraziť popup menu pre dopĺňanie
"               + Zobraziť menu aj keď je jediná zhoda

" Automatické zatvorenie náhľadového okna pri presune kurzoru
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Dopĺňanie po stlačení Ctrl+Space
imap <C-Space> <C-X><C-I>
imap <Nul> <C-X><C-I>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Tagy
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Načítanie súborov s tagmi (alternatíva k CLang)
" set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/qt4
" set tags+=./tags

" let OmniCpp_NamespaceSearch = 2
" let OmniCpp_GlobalScopeSearch = 1
" let OmniCpp_ShowAccess = 1
" let OmniCpp_MayCompleteDot = 0
" let OmniCpp_MayCompleteArrow = 0
" let OmniCpp_MayCompleteScope = 0
" let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" let OmniCpp_ShowPrototypeInAbbr = 1
" let OmniCpp_SelectFirstItem = 0

" Znovuvytvorenie tagov po stlačení Ctrl+F12
" map <C-F12> :!ctags --sort=yes -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Skratky
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vylepšené vkladanie zátvoriek
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

" Vylepšené vkladanie úvodzoviek
inoremap '      ''<Left>
inoremap "      ""<Left>
inoremap ''     '
inoremap ""     "

" Automatické ozátvorkovanie výberu vo vizuálnom režime
" Example:
" Výber, oblasti, stlačenie otváracej zátvorky.
vmap ( <ESC>`>a)<ESC>`<i((<ESC>gv
vmap [ <ESC>`>a]<ESC>`<i[[<ESC>gv
vmap { <ESC>`>a}<ESC>`<i{{<ESC>gv
" Automatické vloženie do úvodzoviek.
" Stlačiť \' vo vizuálnom režime
vmap \' <ESC>`>a''<ESC>`<i''<ESC>gv
" Stlačiť \" vo vizuálnom režime
vmap \" <ESC>`>a""<ESC>`<i""<ESC>gv
" Stlačiť ; vo vizuálnom režime
vmap ; <ESC>`>a“<ESC>`<i„<ESC>gv

" Reverzné poradie znakov
vmap \rv c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>


" Uloženie súboru klávesovou skratkou Ctrl+S. Pre terminály je nutné spustiť
" pred tým 'stty -ixon' pre deaktiváciu riadenia toku. Riadenie toku sa po
" deaktivácii obnoví klávesovou skratkou Ctrl+Q.
map <C-S> :w<CR>
imap <C-S> <ESC><C-S>

" Urlencode
vmap \ue !php -r 'echo urlencode(file_get_contents("php://stdin"));'<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Skratky pre pluginy
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Prechod na alternatívny buffer (napr. z hlavičkového súboru na cpp a opačne)
map <F12> :A<CR>
imap <F12> <ESC>:A<CR>

" Zobrazeniei okna TagList
map <F11> :TagbarToggle<CR>

" Zobrazenie mini buffer exploreru
map <silent> <F3> :call BufferList()<CR>

" Premapovanie klávesy home nech skáče na prvý neprázdny znak
map <silent> <Home> ^
imap <silent> <Home> <C-O>^

if !hasmapto('<Plug>ToggleProject')
	nmap <silent> <F8> <Plug>ToggleProject
endif
nmap <silent> <F7> :GundoToggle<CR>

" Zarovnanie komentárov pre doxygen
vmap \adox :Align! lp1P0 "\\\\/\*\*< " "\*/"<CR>

" Zoznamy
nmap \check cl✔<esc>
nmap \uncheck cl✗<esc>
nmap \partcheck cl◉<esc>

" Spustenie make
map <F9> :make -j 2<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Export do HTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vypnutie exportu čísel riadkov
let html_number_lines = 0

" Zapnutie xhtml formátu
let use_xhtml = 1

" Zapnutie CSS
let html_use_css = 1

" Prevod súboru vimrc do html a pridanie odkazov do tohto súboru
" Example:
" Odkazom je komentár v tvare '*> Názov odkazu'
" Cieľ odkazu má tvar '=> Názov odkazu' (musia mať identický text)
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rôzne
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nastavenie jazyka pre automatickú kontrolu na slovenský
" Pre zapnutie kontroly treba spustiť :set spell
" Predtým sa musia vygenerovať slovníky. Na generovanie sa používa štandardný
" myspell slovník (napr. v /usr/share/myspell). Na vygenerovanie sa používa
" mkspell.
"set spelllang=sk

" Automatický skok na prvú chybu
set cf

" Automatické načítanie doxygen syntaxe
let g:load_doxygen_syntax=1
" Zákaz automatického zvýraznenia prvej vety.
let g:doxygen_javadoc_autobrief=0

let c_space_errors=1
"let c_no_bracket_error=1
let c_no_curly_error=1
let c_curly_error=1

" Pri kopírovaní vo vim-e uloží do schránky
set clipboard=unnamed,unnamedplus


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Optimalizácia výkonu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Synchronizácia zvýrazňovania syntaxe od začiatku pri vstupe do bufferu
" Pozor - dosť pomalé
"autocmd BufEnter * syntax sync fromstart

" Aktualizácia syntaxe min. 500 riadkov mimo obrazovku
syntax sync minlines=500

" Optimalizácia pre rýchle terminálové spojenia
set ttyfast


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Figlet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! InsertFiglet()
	let text = input("Text: ")
	let font = input("Font: ", "smslant")
	let lineBegin = input("Begin of line: ", " * ")
	execute "r!figlet -w 150 ".shellescape(text)." -f ".shellescape(font)."|sed -e 's/\\(.*\\)/".lineBegin."\\1/'|sed -e 's/ \\+$//'"
endfunction
nmap \if :call InsertFiglet()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nastavenia pluginov
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nastavenia project pluginu
let g:proj_flags="imstvcS"
"                 |||||||
"                 ||||||+ Zoraďovanie názvov
"                 |||||+ Uzatvorenie okna projektu po výbere súboru
"                 ||||+ Používanie vimgrep namiesto grep
"                 |||+ Nastavenie veľkosti okna
"                 ||+ Zobrazovanie syntaxe v projekte
"                 |+ Povolenie Ctrl+W O
"                 + Zobrazenie súboru a adresára v príkazovom riadku pri výbere

" Nastavenie autora pre Ultisnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nastavenia pre konkrétne typy súborov
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! ReformatXml()
	%!xmllint --format --recover --encode utf-8 - 2>/dev/null
endfunction

" Funkcie pomáhajúce pri práci s jazykmi c, c++, php, alebo java
"set errorformat+=%-GIn\ file\ included\ from\ %f:%l:%c\\,_
"set errorformat+=%-GIn\ file\ included\ from\ %f:%l\\,
"set errorformat+=%-Gfrom\ %f:%l\\,
"set errorformat+=%-Gfrom\ %f:%l:%c\\,
"let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat
let errormarker_erroricon = "/usr/kde/4.4/share/icons/oxygen/16x16/status/dialog-error.png"
let errormarker_warningicon = "/usr/kde/4.4/share/icons/oxygen/16x16/status/dialog-warning.png"
"set errorformat+=In\ file\ included\ from\ %f:%l:%c\\,
let &errorformat="%-GIn file included from %f:%l:%c\\,,%-GIn file included from %f:%l:%c:,%-Gfrom %f:%l\\,,-Gfrom %f:%l:%c\\,," . &errorformat

"Nastavenie lokálneho vimrc
let g:local_vimrc = {'names':['.local.vimrc'],'hash_fun':'LVRHashOfFile'}

" Vykonanie kontroly PHP súboru PHP interpreterom
function! CheckPhp()
	let oldMakeprg=&makeprg
	let oldErrorformat=&errorformat
	setlocal makeprg=php\ -l\ %
	setlocal errorformat=%m\ in\ %f\ on\ line\ %l
	make
	exe 'setlocal makeprg="'.escape(oldMakeprg, ' \"').'"'
	exe 'setlocal errorformat="'.escape(oldErrorformat, ' \"').'"'
endfunction

" Vykonanie kontroly PHP súboru nástrojom phpcs
function! RunPhpcs()
	let oldErrorformat=&errorformat
	setlocal errorformat+=\"%f\"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,\"%m\"
	let l:filename=@%
	let l:phpcs_output=system('phpcs --report=csv '.l:filename)
	"echo l:phpcs_output
	let l:phpcs_list=split(l:phpcs_output, "\n")
	unlet l:phpcs_list[0]
	cexpr l:phpcs_list
	cwindow
	exe 'setlocal errorformat="'.escape(oldErrorformat, ' \"').'"'
endfunction

" Regenerovanie PHP tagov v aktuálnom adresári
function! RebuildPhpTags()
	silent execute "!find . -name '*.php' > ./cscope.files 2> /dev/null"
	silent execute "!cscope -b &> /dev/null"
	silent execute "!rm ./cscope.files &> /dev/null"
	silent execute "!ctags -f tags --sort=yes -R . --fields=+aiS --extra=+q --totals=yes --PHP-kinds=+cf &> /dev/null"
	cscope reset
	cscope add cscope.out
	"redraw!
endfunction

" Aktualizácia tagov pre aktuálne upravovaný súbor
function! UpdateCurrentFilePhpTags()
	silent execute "!ctags -f tags --sort=yes -a --fields=+iaS --extra=+q % &> /dev/null"
	silent execute "!cscope -b % &> /dev/null"
	cscope reset
	cscope add cscope.out
endfunction

function! UpdateCurrentFileCTags()
	silent execute "!ctags -f tags --sort=yes -a --c++-kinds=+p --fields=+iaS --extra=+qfg --language-force=C++ % &> /dev/null"
	silent execute "!cscope -b % &> /dev/null"
	cscope reset
	cscope add cscope.out
endfunction

function! FileWritePost()
	" štandardne nič, načítavam z .lvimrc
endfunction


autocmd FileType cs setlocal errorformat=
	\%E%f(%l\\,%c):\ error\ CS%n:%m,
	\%W%f(%l\\,%c):\ warning\ CS%n:%m,
	\%E%>syntax\ error\\,%m,%Z%f(%l\\,%c):\ error\ CS%n:%m,
	\%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',
	\%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',
	\%DMaking\ %*\\a\ in\ %f,
	\%G-%.%#
autocmd FileType cs let current_compiler = "gmcs"
autocmd FileType cs set makeprg=gmcs\ -warn:4\ *.cs
autocmd FileType cs set foldmethod=marker
" autocmd FileType cs set foldcolumn=5
autocmd FileType cs set foldlevel=4
autocmd FileType cs set foldmarker={,}
autocmd FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
autocmd FileType cs set omnifunc=syntaxcomplete#Complete

" Zvýraznenie názvy metód
function! EnhanceCppSyntax()
	syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
	" hi def link cppFuncDef Special
endfunction
autocmd Syntax cpp call EnhanceCppSyntax()
autocmd Syntax cpp hi doxygenEmphasisedWord ctermfg=250 cterm=bold
autocmd BufNewFile *.cpp,*.h,*.c execute "set paste" | execute "normal i/*\r * =====================================================================\r *        Version:  1.0\r *        Created:  ".strftime("%x")." ".strftime("%X")."\r *         Author:  ".g:snips_author."\r *        Company:  ".g:snips_company."\r * =====================================================================\r */\r\r" | execute "set nopaste"
autocmd BufNewFile *.php execute "set paste" | execute "normal i<?php\r/*\r * =====================================================================\r *        Version:  1.0\r *        Created:  ".strftime("%x")." ".strftime("%X")."\r *         Author:  ".g:snips_author."\r *        Company:  ".g:snips_company."\r * =====================================================================\r */\r?>\r" | execute "set nopaste"
autocmd BufNewFile *.py execute "set paste" | execute "normal i# -*- coding: utf-8 -*-\r" | execute "set nopaste"

" ui súbory
function! RunDesigner()
	!designer %&
endfunction
autocmd BufWinEnter *ui :call RunDesigner()

let g:pep8_map='<leader>8' "python
autocmd FileType python set completeopt=menuone,menu,preview
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set completefunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript set completefunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set completefunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set completefunc=csscomplete#CompleteCSS

" Nastavenie kopírovania hlavičky do implemntácie pre C++
autocmd FileType c,cpp nmap <F5> "lYml[[kw"cye'l
autocmd FileType c,cpp nmap <F6> :set paste<CR>ma:let @n=@/<CR>"lp==:s/\<virtual\>\s*//e<CR>:s/\<static\>\s*//e<CR>:s/\s*=\s*[^,)]*//ge<CR>:let @/=@n<CR>'ajf(b"cPa::<Esc>f;s<CR>{<CR>}<CR><Esc>kk:nohlsearch<CR>:set nopaste<CR>

" Spoločné nastavenia pre jazyky syntakticky podobné C
" autocmd FileType c,cpp,java,php map <buffer> <F9> :make -j 2<CR>
autocmd FileType php set smartindent
autocmd FileType c,cpp,java,php,python,html,css,javascript imap <C-Space> <C-X><C-O>
autocmd FileType c,cpp,java,php,python,html,css,javascript imap <Nul> <C-X><C-O>

" Regenerovanie tagov
autocmd FileType c,cpp,java command! Crb !ctags --sort=yes -R --c++-kinds=+p --fields=+iaS --extra=+qf .
autocmd FileType php command! Crb execute "silent make cscope" | execute "cscope reset" | execute "cscope add cscope.out"

" Nastavenia pre c a c++
autocmd FileType c,cpp set foldmethod=indent
" autocmd FileType c,cpp set foldcolumn=5
autocmd FileType c,cpp set foldlevel=6
" Pridanie definície v hlavičkových súboroch (ifndef, define, endif)
autocmd FileType c,cpp command! AddDef call C_InsertTemplate("preprocessor.ifndef-def-endif")

" Nastavenia pre PHP
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
"autocmd FileType php map <buffer> <F9> :call CheckPhp()<CR>
autocmd FileType php set syntax=php.doxygen
autocmd FileType php command! Phpcs execute RunPhpcs()
autocmd BufWritePost *.php call FileWritePost()
autocmd BufWritePost *.cpp call FileWritePost()
autocmd BufWritePost *.h call FileWritePost()
autocmd BufRead,BufNewFile *.qml set filetype=qml
autocmd BufNewFile *.qml execute "normal ihdr	"

" V php syntaxi je napevno nastavené formátovanie odstavcov - vypínam
" autocmd FileType php set formatoptions-=w
autocmd FileType php setlocal comments=s1:/*,mb:*,ex:*/,://,:#

" Drobnosti pre PHP
let php_baselib = 1
let php_noShortTags = 1
let php_parent_error_close = 1
let php_parent_error_open = 1
"let php_sync_method = 0
let PHP_vintage_case_default_indent = 1
let PHP_autoformatcomment = 0
"let php_folding = 1
"let php_sql_query = 1

" Funkcie pre doplňovanie v PHP
autocmd FileType php set completefunc=phpcomplete#CompletePHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set completeopt=menuone,menu,preview

" Nastavenia pra Javu
autocmd FileType java set tags=~/.javatags
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java setlocal completefunc=javacomplete#Complete

" Nastavenia pre python
let g:pythoncomplete_include_super = 1
autocmd FileType python setlocal complete+=k
autocmd FileType python setlocal isk+=".,("
"autocmd FileType python setlocal tags+=$HOME/.vim/tags/python
autocmd FileType python setlocal omnifunc=Pythoncomplete2
autocmd FileType python setlocal completefunc=Pythoncomplete2
autocmd BufRead *.py setlocal makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
function LoadVirtualenv()
	py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	sys.path.insert(0, project_base_dir)
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF
endfunction

function! Pythoncomplete2(findstart, base)
	if !exists('g:pythoncomplete2_initialized')
		let g:pythoncomplete2_initialized = 1
		python import vim
		python import re
	endif
	return pythoncomplete#Complete(a:findstart, a:base)
endfunction

function! MailSettings()
	setlocal textwidth=72
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
	setlocal wrap
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

runtime local.vim
