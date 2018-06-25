
" Theme
" -----

" Enable 256 color terminal
set t_Co=256

" Enable true color
if has('termguicolors')
	set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if has('gui_running')
	set background=dark
	set lines=40
	set columns=150
endif

function! s:theme_reload(name)
	let theme_path = $VIMPATH.'/themes/'.a:name.'.vim'
	if filereadable(theme_path)
		execute 'source' fnameescape(theme_path)
		" Persist theme
		call writefile([g:colors_name], s:cache)
	endif
endfunction

" THEME NAME
let g:theme_name = 'rafi-2017'
autocmd MyAutoCmd ColorScheme * call s:theme_reload(g:theme_name)

" COLORSCHEME NAME
let s:cache = $VARPATH.'/theme.txt'
if ! exists('g:colors_name')
	set background=dark
	execute 'colorscheme'
		\ filereadable(s:cache) ? readfile(s:cache)[0] : 'hybrid'
endif

" Theme
syntax enable
" colorscheme tender
colorscheme sublimemonokai
let g:sublimemonokai_term_italic = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" vim: set ts=2 sw=2 tw=80 noet :
