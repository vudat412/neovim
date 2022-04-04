" --------------------------------- Plugin for nvim -------------------------------------------
"  -------------------------------------------------------------------------------------------
call plug#begin("~/.vim/plugged")
    " plug section coc-extentsion
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    
    "Plug 'sheerun/vim-polyglot'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-syntastic/syntastic'

    " Plug theme - background
    Plug 'vim-airline/vim-airline-themes'
    Plug 'rafi/awesome-vim-colorschemes'
    "Plug 'morhetz/gruvbox'
    "Plug 'dracula/vim'
    
    Plug 'ervandew/supertab'
    
    Plug 'jiangmiao/auto-pairs' " access auto create {} () [] '' ... (alt + e)
    
    Plug 'scrooloose/nerdcommenter' " plugin comment \cc -> comment || \cu not comment
    
    Plug 'scrooloose/nerdtree' " support open file and close file (Alt + b)

    Plug 'ryanoasis/vim-devicons' " icon file cute alt + b to watching

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'majutsushi/tagbar' " --> Tagbar <F8>

    Plug 'yuezk/vim-js' " A Vim syntax highlighting plugin for JavaScript and Flow.js
    Plug 'maxmellon/vim-jsx-pretty' " Highlight JSX Syntax
    Plug 'peitalin/vim-jsx-typescript' "Syntax highlighting and indentation for JSX in Typescript

    " TypeScript
    Plug 'HerringtonDarkholme/yats.vim' "YATS: Yet Another TypeScript Syntax || Syntax for typescript
    Plug 'ianks/vim-tsx'

    " Plug run node --> NpmRun start|stop|restart
    Plug 'neoclide/npm.nvim', {'do' : 'npm install'}

    " Plugin python
    Plug 'vim-scripts/indentpython.vim'
    Plug 'lepture/vim-jinja'

    "plug ruby
    Plug 'vim-ruby/vim-ruby'

    "Plug docker-tools
    Plug 'kevinhui/vim-docker-tools'

    " plugin surround {} [] 
    Plug 'tpope/vim-surround'
    
    " BlockChain Solidity
    Plug 'tomlion/vim-solidity'

    " plug markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
call plug#end()

" ---------------------------------------------------------------------------------
" ----------------------------- Setup PATH-----------------------------
let g:loaded_python_provider = 0
let g:tagbar_ctags_bin='C:\ProgramData\chocolatey\lib\universal-ctags\tools\ctags.exe'
" set enviroment - Source local init.vim
let s:local_vimrc = expand('~\AppData\Local\nvim\init.local.vim')
if filereadable(fnameescape(s:local_vimrc))
  execute 'source ' . fnameescape(s:local_vimrc)
endif
unlet! s:local_vimrc
" ---------------------------------------------------------------------------------
" ------------------------- Set Path Config for Nvim ------------------------------
for f in split(glob('~\AppData\Local\nvim\config\*.vim'), '\n')
    exe 'source' f
endfor

