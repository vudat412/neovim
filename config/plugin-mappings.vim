"NERDTree
nnoremap <silent><A-b> :NERDTreeToggle<CR>
nnoremap <silent><F2> :NERDTreeFind<CR>
"ALE
nnoremap <silent> [a :ALEPreviousWrap<CR>
nnoremap <silent> ]a :ALENextWrap<CR>
"GIT
nnoremap <silent> <Leader>gg :Git<CR>
nnoremap <silent> <Leader>gc :Commits<CR>
nnoremap <silent> <Leader>gb :Git blame<CR>
nnoremap <silent> <Leader>gr :Gread<CR>
nnoremap <silent> <Leader>gl :Git log<CR>
"FZF
nnoremap <silent> <Leader>l :Buffers<CR>
nnoremap <C-p> :Files <CR>
"gundo
nnoremap <silent> <Leader>i :GundoToggle<CR>
"easymotion
map <Leader>f <Plug>(easymotion-bd-f)
"COC
"main commands
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nmap <Leader>cr <Plug>(coc-rename)
xmap <Leader>ca <Plug>(coc-codeaction-selected)
nmap <Leader>cf <Plug>(coc-format)
nmap <leader>cr :CocRestart
"nmap <Leader>cc :CocCommand editor.action.pickColor<CR>
"ShowDocumentation in functions.vim
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"scroll windows
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<CR>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<CR>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"request window/popup
inoremap <silent><expr> <C-Space> coc#refresh()
"expand snippets
"imap <Leader> \\ <Plug>(coc-snippets-expand)
"select from menu by CR
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
