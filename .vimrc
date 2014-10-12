syntax on

set nocompatible
set history=10000

set list
set listchars=tab:>-
set tabstop=4
set shiftwidth=4
set background=dark
set laststatus=2

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

set imdisable

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

"GNU global
noremap <C-g> :Gtags 
noremap <C-i> :Gtags -f %<CR>
noremap <C-j> :GtagsCursor<CR>
noremap <C-n> :cn<CR>
noremap <C-p> :cp<CR>

" END OF FILE
