" MISC
"" Persistent Undo - https://stackoverflow.com/questions/5700389/using-vims-persistent-undo
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

if has('persistent_undo')
	let myUndoDir = expand(vimDir . '/undodir')
	call system('mkdir ' . vimDir)
	call system('mkdir ' . myUndoDir)
	let &undodir = myUndoDir
	set undofile
endif

"" Persistent Line Number - https://stackoverflow.com/questions/774560/in-vim-how-do-i-get-a-file-to-open-at-the-same-line-number-i-closed-it-at-last
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	\| exe "normal! g'\"" | endif
endif

"" Automatically cd into the directory that the file is in - https://stackoverflow.com/questions/13864389/how-to-change-current-path-in-vim-automatically
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" PLUGINS
call plug#begin('~/.vim/plugged')

""  gruvbox theme
Plug 'morhetz/gruvbox'
"" vim-airpline
Plug 'vim-airline/vim-airline'
"" gv-vim
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

call plug#end()

" CONFIGURATIONS
"" main
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set ai
set autoread
set backspace=2
set expandtab
set mouse=a
set nobackup
set noswapfile
set nowb
set nu
set shiftwidth=2
set si
set smarttab
set softtabstop=2
set splitright
set termguicolors
set visualbell
set wrap

"" gruvbox
autocmd vimenter * colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
