source .vim/vimrc.basic

au VimLeave * :mksession! .vim/cc.session
if getfsize(".vim/cc.session") >= 0
    source .vim/cc.session
endif

"add mappings"
map <F4> :execute "vimgrep /\\<" . expand("<cword>") . "\\>/j **/*.cc **/*.h" <Bar> cw<CR>
