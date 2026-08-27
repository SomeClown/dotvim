set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'
Plug 'preservim/vim-lexical'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized
set mouse=a
set number
set laststatus=2
set t_Co=256
set clipboard+=unnamed
set go+=a
set pastetoggle=<F2>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_guifg = '#777777'
let g:limelight_conceal_ctermfg = 240

let g:airline_theme='solarized'

set dir=~/.backup//,.
set backupdir=~/.backup,.

func! WordProcessorMode()
	execute "Goyo"
	execute "Pencil"
	call lexical#init()
	setlocal formatoptions=1 
	setlocal noexpandtab 
	map j gj 
	map k gk
	setlocal spell spelllang=en_us 
	set thesaurus+=$HOME/.vim/thesaurus/mthesaur.txt
	set complete+=s
	set formatprg=par
	setlocal wrap 
	setlocal linebreak 
	endfu
com! WP call WordProcessorMode()


