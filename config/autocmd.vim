autocmd FileType go setlocal noexpandtab
autocmd FileType ruby call UseSpacesTwo()
autocmd WinEnter term://* startinsert

autocmd BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.sh
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


" set filetypes as typescriptreact || vim-jsx-typecript
autocmd BufNewFile,BufRead *.tsx,*.jsx, *.js, *.ts set filetype=typescriptreact
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab

"run code
augroup mygroup
    autocmd!
    " execute python code
    autocmd FileType python nnoremap <buffer> <F6>
                \ :sp<bar>:w<CR> :term python3 %<CR> :startinsert<CR>
    autocmd FileType python nnoremap <buffer> <F5>
                \ :sp<bar>:w<CR> :term python %<CR> :startinsert<CR>
    " execute javascript code
    autocmd FileType javascript nnoremap <buffer> <F5>
                \ :sp<bar>:w<CR> :term node %<CR> :startinsert<CR>
    autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++11 % <cr> :vnew <bar> :te "a.exe" <cr><cr>
    autocmd filetype cpp nnoremap <f6> :vnew <bar> :te "a.exe" <cr>
    autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
    autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>
augroup end

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Refresh the current folder if any changes
autocmd BufEnter NERD_tree_* | execute 'normal R'
autocmd CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif
"Reload the window if directory is changed
augroup DIRCHANGE
    autocmd!
    autocmd DirChanged global :NERDTreeCWD
augroup END
autocmd BufWritePre * :call TrimWhitespace()

" Open terimal
autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif

" FZF
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

