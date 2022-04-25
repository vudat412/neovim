require('datv.plugins')
require('datv.keybindings')
require('datv.options')

-- ####### PATH ENV ######## -- 
vim.cmd[[
let g:loaded_perl_provider = 0
let g:loaded_python_provider = 0
let s:local_vimrc = expand('~\AppData\Local\nvim\init.local.vim')
if filereadable(fnameescape(s:local_vimrc))
  execute 'source ' . fnameescape(s:local_vimrc)
endif
unlet! s:local_vimrc
]]


