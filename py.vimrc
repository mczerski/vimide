source .vim/vimrc.basic

au VimLeave * :mksession! .vim/py.session
if getfsize(".vim/py.session") >= 0
    source .vim/py.session
endif

"add mappings"
map <F4> :execute "vimgrep /\\<" . expand("<cword>") . "\\>/j **/*.py" <Bar> cw<CR>
