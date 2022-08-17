set nocompatible		" not compatible with Vi
filetype on 
filetype indent on
filetype plugin on
filetype plugin indent on

set mouse=a
set tabstop=4
set nu
set autoindent
set hls
set incsearch
set nrformats=		" treat number as Decimal
set wildmenu
set wildmode=full
set history=200
set cursorline
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"set noswapfile		" Disable swp file from generating
set relativenumber
set wrap
set showcmd
set ignorecase
set smartcase

let mapleader=" "
let g:mapleader=" "
noremap <LEADER>/ :nohlsearch<CR>
noremap <LEADER>, :source $MYVIMRC<CR>:nohlsearch<CR>
noremap <LEADER>q :q<CR>
noremap <LEADER>w :w<CR>

" Keep search pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Keep H L move at the center of the screen
nnoremap <silent> H Hzz
nnoremap <silent> L Lzz

" auto complete quotes
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap < <><ESC>i

" split console easier
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

" easier movement in split window
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" switch split windows in vertical and horizontal
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

" shortcut for new tabs
map <LEADER>t :tabe<CR>

syntax on
autocmd FileType python,shell,coffee set commentstring=#\ %s
autocmd FileType java,c,cpp set commentstring=//\ %s

" use %% as current address in command mode
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

set incsearch

runtime macros/matchit.vim

nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

noremap <Up> :res +5<CR>
noremap <Down> :res -5<CR>
noremap <Left> :vertical resize-5<CR>
noremap <Right> :vertical resize+5<CR>
"--------------------
"	Vundle Config
"--------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'scrooloose/nerdtree'
" let NERDTreeWinPos='right'
let NERDTreeWinSize=30
map <LEADER>f :NERDTreeToggle<CR>
" Plugin 'VimIm'
" Plugin 'Valloric/YouCompleteMe'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"Plugin 'ybian/smartim'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
" -------
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
