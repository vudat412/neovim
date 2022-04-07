"###################################################################################
"       __  ___                      _
"      /  |/  /____ _ ____   ____   (_)____   ____ _ _____
"     / /|_/ // __ `// __ \ / __ \ / // __ \ / __ `// ___/
"    / /  / // /_/ // /_/ // /_/ // // / / // /_/ /(__  )
"   /_/  /_/ \__,_// .___// .___//_//_/ /_/ \__, //____/
"                 /_/    /_/               /____/
"
"###################################################################################

" Set leader to space bar
let mapleader = "-"
let maplocalleader = "\\"
"cmd history nav
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
"rerender window with cleaning highlight search
nnoremap <silent> // :noh<return>
"quickfix list
nnoremap <silent>[e :cp<Enter>
nnoremap <silent>]e :cn<Enter>
"save buffer
nnoremap <Leader>w :w!<Enter>
"save and exit
nnoremap <silent><Leader>x :x!<Enter>
"revert buffer
nnoremap <silent><Leader>e :e!<Enter>
"quit all
nnoremap <Leader>! :qa!<Enter>
"delete buffer & do not close window
nnoremap <silent><Leader>d :bp<bar>sp<bar>bn<bar>bd!<Enter>
"delete buffer & close window
nnoremap <silent><Leader>; :bd!<Enter>
"only one window
nnoremap <silent><Leader>o <C-w>o
"close window
nnoremap <silent><Leader>q <C-w>q
"show registers
nnoremap <Leader>r :reg<Enter>
"jumps between widnows
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
inoremap <C-h> <C-\><C-n><C-w>h
inoremap <C-j> <C-\><C-n><C-w>j
inoremap <C-k> <C-\><C-n><C-w>k
inoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" open file tap
nnoremap <silent><C-t> :vsplit<CR>
nnoremap <silent><C-w> :split<CR>
"terminal open
nnoremap <c-n> :call OpenTerminal()<CR>
nnoremap <silent><Leader>v :vsplit term://pwsh<Enter>:norm A<Enter>
nnoremap <silent><Leader>t :split term://pwsh<Enter>:norm A<Enter>
"terminal close
tnoremap <silent><A-;> <C-\><C-n>:bd!<Enter>
" move line in file
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
" Tabbar
nnoremap <silent> <F8> :TagbarToggle<CR>
" ESC
tnoremap <Esc> <C-\><C-n>
" Nerdtree
map <C-r> :call NERDTreeToggleAndRefresh()<CR>
" reload source
nnoremap <leader>sv :source $MYVIMRC<cr>
" Search and Replace hotkey
nnoremap H :%s//gc<left><left><left>
" Markdown
"nmap <C-s> <Plug>MarkdownPreview
nmap <Leader>md <Plug>MarkdownPreviewToggle
nmap <C-c> <Plug>MarkdownPreviewStop
" YATS
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
" Start Screen
nmap <c-n> :Startify<cr> " CtrN open start screen neovim
" AutoComplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" TAB
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Enter to confirm completion
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

