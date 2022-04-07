function! UseSpacesTwo()
    setlocal tabstop=2
    setlocal softtabstop=2
    setlocal shiftwidth=2
    setlocal expandtab
endfunction

function! UseSpacesFour()
    setlocal tabstop=4
    setlocal softtabstop=4
    setlocal shiftwidth=4
    setlocal expandtab
endfunction

function! UsetTabsFour()
    setlocal tabstop=4
    setlocal softtabstop=4
    setlocal shiftwidth=4
    setlocal noexpandtab
endfunction

function! HasGit() abort
    let l:branch = fugitive#statusline()
    return len(l:branch) > 1
endfunction

function! CurrentGitBranch() abort
    if HasGit()
        let l:branch = split(fugitive#statusline(),'[()]')
        return remove(l:branch, 1)
    endif
    return ""
endfunction

function! GitStatus() abort
    if HasGit()
        let [a, m, r] = GitGutterGetHunkSummary()
        if (a == 0) && (m == 0) && (r == 0)
            return ""
        endif
        return printf('   +:%d ~:%d -:%d', a, m, r)
    endif
    return ""
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))
    if l:counts.total == 0
        return ""
    endif
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return printf('[?:%d !:%d]', l:all_non_errors, l:all_errors)
endfunction

function! DiagnosticStatus() abort
    let l:info = get(b:, 'coc_diagnostic_info', {})
    if empty(info) | return '' | endif
    let l:error = info['error']
    let l:warning = info['warning']
    let l:information = info['information']
    let l:hint = info['hint']
    if (l:error == 0) && (l:warning == 0) && (l:information == 0) && (l:hint == 0)
        return ""
    endif
    return printf('w:%d e:%d h:%d i:%d', l:warning, l:error, l:hint, l:information)
endfunction

" Nerdtree
function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

function NERDTreeToggleAndRefresh()
  :NERDTreeToggle
  if g:NERDTree.IsOpen()
    :NERDTreeRefreshRoot
  endif
endfunction

" Terimal
function! OpenTerminal()
  split term://pwsh.exe
  "split term://bash
  resize 15
endfunction

" Markdown
function! g:EchoUrl(url)
    :echo a:url
endfunction

" ALE
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

" TAB
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
