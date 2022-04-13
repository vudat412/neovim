" Python 3
let s:python3_host_prog = expand('$USERPROFILE\venv\neovim3\Scripts\python.exe')
if filereadable(fnameescape(s:python3_host_prog))
  let g:python3_host_prog = fnameescape(s:python3_host_prog)
else
  unlet! g:python3_host_prog
endif

" Node.js
let s:node_host_prog = expand('$APPDATA\npm\node_modules\neovim\bin\cli.js')
if filereadable(fnameescape(s:node_host_prog))
  let g:node_host_prog = fnameescape(s:node_host_prog)
else
  unlet! g:node_host_prog
endif

" Ruby
let s:ruby_host_prog = expand('C:\Ruby31-x64\bin\neovim-ruby-host.bat')
if filereadable(fnameescape(s:ruby_host_prog))
  let g:ruby_host_prog = fnameescape(s:ruby_host_prog)
else
  unlet! g:ruby_host_prog
endif

