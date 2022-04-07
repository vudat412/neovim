"gundo
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
"gitgutter
let g:gitgutter_max_signs = 9999
let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_removed = '┃'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_modified_removed = '∘'
let g:gitgutter_sign_removed_first_line = '↑'
let g:gitgutter_sign_removed_above_and_below = '‡'
let g:gitgutter_preview_win_floating = 1

"Ack use rg
if executable('rg')
    let g:ackprg = 'rg --vimgrep'
endif
"FZF
let g:fzf_preview_window = ['down:50%']
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
"ALE
let g:ale_enabled = 0
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:ale_linters = {
            \   'jsx': ['eslint'],
            \   'javascript': ['eslint']
            \}
"highlight yank
let g:highlightedyank_highlight_duration = 300
"Emmet
let g:user_emmet_leader_key = '<C-z>'
"COC
let g:coc_global_extensions=[
            \'coc-css',
            \'coc-json',
            \'coc-tsserver',
            \'coc-html',
            \'coc-java',
            \'coc-snippets',
            \'coc-eslint',
            \'coc-pyright',
            \'coc-python',
            \]
"NERDTreeGitPlugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'m',
                \ 'Staged'    :'s',
                \ 'Untracked' :'?',
                \ 'Renamed'   :'r',
                \ 'Unmerged'  :'u',
                \ 'Deleted'   :'d',
                \ 'Dirty'     :'~',
                \ 'Ignored'   :'i',
                \ 'Clean'     :'c',
                \ 'Unknown'   :'-',
                \ }
let g:NERDTreeShowHidden = 1
let g:NERDTreeStatusline = ''
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
"let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1

" ###########################################################
" air-line || color blue
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'jellybeans'
let g:airline_theme='simple'
"let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
highlight Comment cterm=italic gui=italic
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" Markdown
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
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
