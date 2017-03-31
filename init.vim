set nocompatible
syntax enable
set t_Co=256
if has('gui_running')
	set background=light
else
	set background=dark
endif	
set number
set ruler
set autoread
set backspace=2
set directory-=.
set encoding=utf-8
set expandtab
set showcmd
set shiftwidth=4
set softtabstop=4
set tabstop=4
set nobackup
set nowritebackup
filetype plugin indent on "开启插件
set ignorecase smartcase
set smartindent
set hlsearch
set laststatus=2
set showmatch
set matchtime=1
set helplang=cn
set foldmethod=syntax
set foldlevel=99
set clipboard+=unnamedplus
set mouse=a
vmap <c-c> "+y

let mapleader =','
inoremap jj <ESC>
noremap <C-h> <c-w>h
noremap <C-j> <c-w>j
noremap <C-k> <c-w>k
noremap <C-l> <c-w>l
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
"autocmd BufEnter * silent! lcd %:p:h
autocmd VimResized * :wincmd =
set completeopt-=preview

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

filetype off
" set rtp+=~/.vim/bundle/Vundle.vim/
call plug#begin()
" Bundle 'gmarik/Vundle.vim'
if filereadable(expand("~/.config/nvim/bundle.vim"))
	source ~/.config/nvim/bundle.vim
endif
call plug#end()
if filereadable(expand("~/.config/nvim/local.vim"))
	source ~/.config/nvim/local.vim
endif
filetype plugin indent on
colorscheme solarized
