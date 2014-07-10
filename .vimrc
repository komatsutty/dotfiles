syntax on

set nocompatible
set history=10000

set list
set listchars=tab:>-
set tabstop=4
set shiftwidth=4
set background=dark

set cursorline
set cursorcolumn
set cmdheight=1
set switchbuf=useopen
set shell=bash
set hlsearch
set incsearch
set showmatch
set ignorecase smartcase

set noswapfile
set nobackup

" http://www.vim.org/scripts/script.php?script_id=2340
colorscheme molokai

inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<left>
inoremap '' ''<left>
inoremap $$ $$<left>
inoremap <> <><left>
inoremap `` ``<left>

" END OF FILE
