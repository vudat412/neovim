set rtp+=~/.vim/bundle/nerdtree
set nocompatible

filetype plugin indent on
syntax on
set updatetime=300
set timeoutlen=30000
set hidden
set nobackup
set complete-=t
set completeopt-=preview
set omnifunc=syntaxcomplete#Complete
set smartindent
set number

"set mouse=v
set hlsearch
set incsearch
set showmatch
set wildmenu
set lazyredraw

set encoding=utf-8
set fileencoding=utf-8
set foldmethod=indent
set foldlevel=99

set title
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set confirm
set ttyfast
set splitbelow
set splitright

set wildmode=longest:full
set showcmd
set autoindent
set autochdir
set smarttab
set ignorecase
set infercase
set smartcase
set mouse=a
set noswapfile
set backspace=indent,eol,start

set background=dark
set termguicolors
set guicursor=
set t_Co=256
set laststatus=2
set showtabline=2

hi Pmenu guibg=#1b1b1b ctermbg=Black

"statusline
set statusline=
set statusline+=\%*
set statusline+=%3*\ %F
set statusline+=%5*
set statusline+=\ %{CurrentGitBranch()}
set statusline+=%4*\ %m
set statusline+=%3*
set statusline+=%=
set statusline+=%4*\%{DiagnosticStatus()}
set statusline+=%6*\%{GitStatus()}
set statusline+=%3*\ \
set statusline+=%2*\%l
set statusline+=%7*\:
set statusline+=%2*\%L
set statusline+=%7*\::
set statusline+=%2*\%c
set statusline+=%3*\ \%*



