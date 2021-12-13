set number
set updatetime=10
set noexpandtab
set tabstop=4
set shiftwidth=4
set nofoldenable
set tw=79
set fo-=l

" GitGutter
let g:gitgutter_enabled = 1

" Mail
autocmd BufNewFile,BufRead /tmp/mutt* set noautoindent filetype=mail wm=0 tw=78 nonumber digraph nolist
autocmd BufNewFile,BufRead ~/tmp/mutt* set noautoindent filetype=mail wm=0 tw=78 nonumber digraph nolist

let g:NERDTreeWinPos = "left"
let g:NERDTreeIndicatorMapCustom = {
	\ "Modified"  : "M",
	\ "Staged"    : "+",
	\ "Untracked" : "?",
	\ "Renamed"   : "R",
	\ "Unmerged"  : "U",
	\ "Deleted"   : "D",
	\ "Dirty"     : "@",
	\ "Clean"     : "C",
	\ 'Ignored'   : "X",
	\ "Unknown"   : "?"
	\ }

if has("gui_running")
    set guifont="Monospace 8"
    au VimEnter * NERDTree
    au VimEnter * wincmd p
	
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 1
    
	au BufWinEnter * NERDTreeMirror
endif

set colorcolumn=80
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" vimtex setup
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'
