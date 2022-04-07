"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____    ______  ______  __  __            ______           _____
" /\  _`\ /\  _  \/\__  _\/\ \/\ \          /\  _  \         /\  __`\
" \ \ \/\ \ \ \L\ \/_/\ \/\ \ \ \ \         \ \ \L\ \        \ \ \/\ \  _____     ____
"  \ \ \ \ \ \  __ \ \ \ \ \ \ \ \ \  _______\ \  __ \        \ \ \ \ \/\ '__`\  /',__\
"   \ \ \_\ \ \ \/\ \ \ \ \ \ \ \_/ \/\______\\ \ \/\ \        \ \ \_\ \ \ \L\ \/\__, `\
"    \ \____/\ \_\ \_\ \ \_\ \ `\___/\/______/ \ \_\ \_\        \ \_____\ \ ,__/\/\____/
"     \/___/  \/_/\/_/  \/_/  `\/__/            \/_/\/_/  _______\/_____/\ \ \/  \/___/
"                                                        /\______\        \ \_\
"                                                        \/______/         \/_/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/nerdtree
set nocompatible " Disable compatibility with vi which can cause unexpected issues.

filetype plugin indent on
filetype on " Enable type file detection. Vim will be able to try to detect the type of file is use
"filetype indent on " Load an indent file for the detected file type.
"filetype plugin on " Enable plugins and load plugin for the detected file type.
syntax on
" Coc
"set cmdheight=2
set shortmess+=c
set updatetime=300
set timeoutlen=30000
set hidden
set nobackup
set complete-=t
set completeopt-=preview
set omnifunc=syntaxcomplete#Complete
set smartindent
set number
if has("nvim-0.6.1") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
"set pastetoggle=<F4>
set clipboard=unnamed " copy and paste
set history=1000 " Set the commands to save in history default number is 20
set hlsearch " Use highlighting when doing a search
set incsearch
set wildmenu " Enable auto completion menu after pressing TAB.
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

set cursorline " Highlight cursor line underneath the cursor horizontally.
set guifont=CaskaydiaCove\ NF\ 16
 set guioptions-=T " Display more of the file by default. Hide the toolbar.

set confirm
set ttyfast
set splitbelow
set splitright

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx " Wildmenu will ignore files with these extensions
set wildmode=longest:full " Make wildmenu behave like similar to Bash completion
set showmatch " Show matching words during a search.
set showmode " Show the mode you are on the last line
set showcmd " Show partial command you type in the last line of the screen.
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
highlight clear ALEErrorSign
highlight clear ALEWarningSign
" Ale
set statusline=%{LinterStatus()}

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

" AutoComplete
set completeopt=menuone,noinsert,noselect " Set completeopt to have a better completion experience
set shortmess+=c " Avoid showing message extra message when using completion
