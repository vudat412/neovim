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

"  ---------------------------------------------------------------------------------
" ------------------------- Set Path Config for Nvim ------------------------------
for f in split(glob('~\AppData\Local\nvim\config\*.vim'), '\n')
    exe 'source' f
endfor

