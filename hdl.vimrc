source .vim/vimrc.basic

au VimLeave * :mksession! .vim/hdl.session
if getfsize(".vim/hdl.session") >= 0
    source .vim/hdl.session
endif

"add mappings"
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **/*.v **/*.sv **/*.vhd **/*.vhdl" <Bar> cw<CR>
