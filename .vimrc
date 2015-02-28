set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'vim-scripts/svn-diff.vim'
NeoBundle 'othree/eregex.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 't9md/vim-quickhl'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'glidenote/octoeditor.vim'
NeoBundle 'tpope/vim-liquid'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimproc'
NeoBundle 'vim-scripts/diffchar.vim'
let g:indent_guides_enable_on_vim_startup = 1
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'bronson/vim-trailing-whitespace'

NeoBundle 'surround.vim'

call neobundle#end()
filetype plugin indent on
filetype indent on
NeoBundleCheck

syntax on
set history=20000

set list
set listchars=tab:>-
set tabstop=4
set shiftwidth=4
set laststatus=2
set number

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

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

inoremap <c-f> <RIGHT>
inoremap <c-b> <LEFT>

" http://www.vim.org/scripts/script.php?script_id=2340
set background=dark
colorscheme molokai

" http://ethanschoonover.com/solarized
let g:solarized_termcolors=16
let g:solarized_termtrans=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'
set background=light
colorscheme solarized

"inoremap {} {}<LEFT>
"inoremap [] []<LEFT>
"inoremap () ()<LEFT>
"inoremap "" ""<left>
"inoremap '' ''<left>
"inoremap $$ $$<left>
"inoremap <> <><left>
"inoremap `` ``<left>

"GNU global
noremap <C-g> :Gtags<Space>
noremap <C-i> :Gtags -f %<CR>
noremap <C-j> :GtagsCursor<CR>
noremap <C-n> :cn<CR>
noremap <C-p> :cp<CR>

"quickhl.vim
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

"unite
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
nnoremap [unite] <Nop>
nmap <Leader>f [unite]
nnoremap [unite]u :<C-u>Unite -no-split<Space>
nnoremap [unite]f :<C-u>Unite<Space>buffer<CR>
nnoremap [unite]b :<C-u>Unite<Space>bookmark<CR>
nnoremap [unite]m :<C-u>Unite<Space>file_mru<CR>
nnoremap [unite]r :<C-u>UniteWithBufferDir<Space>file<CR>
nnoremap [unite]vr :UniteResume<CR>

"vimshell
nnoremap <silent> ,is :VimShell<CR>
nnoremap <silent> ,ipy :VimShellInteractive python<CR>
nnoremap <silent> ,irb :VimShellInteractive irb<CR>

"octopress
let g:octopress_path= '~/octopress'
noremap <Leader>on :OctopressNew<CR>
noremap <Leader>ol :OctopressList<CR>
noremap <Leader>og :OctopressGrep<CR>
nnoremap ,og :OctopressGenerate<CR>
nnoremap ,od :OctopressDeploy<CR>

"vimdiff
let g:DiffUpdate = 1
let g:DiffUnit = "Word3"

"typo
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>
noremap <c-c> <Nop>
noremap <c-c> <ESC>

if (exists('+colorcolumn'))
	set colorcolumn=80
	highlight ColorColumn ctermbg=9
endif

" END OF FILE
