" -------------------------- Setting Plug Coc Extentsion ---------------------
"  --------------------------------------------------------------------------- 
let g:coc_global_extensions = [
        \ 'coc-tslint-plugin', 
        "\ 'coc-eslint',
        \ 'coc-tsserver', 
        \ 'coc-python', 
        \ 'coc-emmet', 
        \ 'coc-css',  
        \ 'coc-html', 
        \ 'coc-json', 
        \ 'coc-prettier',
        \ 'coc-eslint8',
        \ 'coc-stylelintplus',
        \ 'coc-snippets', 
        \ 'coc-pairs'
        \ ]

" emmet tab 
imap <Tab> <C-Y>,

" ----------------------------------------------------
" ----------------------- NERDTree -------------------
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle type Alt B
nnoremap <silent> <A-b> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :NERDTreeFind<CR>
" open new split panes to right and below
" -------------------------------------------END

" ------------------- turn terminal to normal mode with escape || Ctr N
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  "split term://pwsh.exe
  split term://bash
  resize 15
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" ------------------------------------------- END

" -------------------------- split navigations ------------------------------
nnoremap <C-J> <C-W><C-J> " Ctr J --> phía bên dưới
nnoremap <C-K> <C-W><C-K> " Ctr K --> phía bên trên
nnoremap <C-L> <C-W><C-L> " Ctr L --> phía bên trái
nnoremap <C-H> <C-W><C-H> " Ctr H --> phía bên phải

" ------------------------------------Search File || Ctr P
nnoremap <C-p> :Files<CR>
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)
let g:fzf_preview_window = ['down:50%']
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit',
  \}
" --------------------------------------------END

" ----------------------- Markdown --------------------------
" Plugin markdown
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = '127.0.0.1'
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = 'g:EchoUrl'
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = '9090'
function! g:EchoUrl(url)
    :echo a:url
endfunction
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
" ------------------------------- END Markdown ---------------------
"  -------------------------------------------------------------------------------------------------

" air-line || color blue
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'jellybeans'
let g:airline_theme='simple'
"let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
highlight Comment cterm=italic gui=italic
set laststatus=2
set showtabline=2
set background=dark
set t_Co=256

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif
" -----------------------------------------------------------

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" YATS: Yet Another TypeScript Syntax 
let g:yats_host_keyword = 1
let g:typescript_conceal_function             = "ƒ"
let g:typescript_conceal_null                 = "ø"
let g:typescript_conceal_undefined            = "¿"
let g:typescript_conceal_this                 = "@"
let g:typescript_conceal_return               = "⇚"
let g:typescript_conceal_prototype            = "¶"
let g:typescript_conceal_super                = "Ω"


" set filetypes as typescriptreact || vim-jsx-typecript
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=2

"""""""""" Configuration vim-jsx-pretty
let g:vim_jsx_pretty_disable_js=0 "Tắt đánh dấu cú pháp cho các tệp js
let g:vim_jsx_pretty_disable_tsx=0 "Tắt đánh dấu cú pháp cho các tệp tsx
let g:vim_jsx_pretty_template_tags=['html', 'css', 'jsx',  'tsx', 'js', 'json', 'ts', 'yaml', 'md', 'graphql'] "đánh dấu JSX bên trong chuỗi mẫu được gắn thẻ
let g:vim_jsx_pretty_highlight_close_tag=0 "đánh dấu thẻ đóng riêng biệt với thẻ mở
let g:vim_jsx_pretty_colorful_config=0 "màu sắc đẩy đủ
let g:vim_jsx_pretty_colorful_config = 1 " default 0
""""""""""

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.sh
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

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

" Tab
nnoremap <silent> <F8> :TagbarToggle<CR>
