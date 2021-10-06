source .vim/vimrc.basic

set tabstop=2
set softtabstop=2
set shiftwidth=2

au VimLeave * :mksession! .vim/js.session
if getfsize(".vim/js.session") >= 0
    source .vim/js.session
endif

set wildignore=*/node_modules/*
"add mappings"
map <F4> :execute "vimgrep /\\<" . expand("<cword>") . "\\>/j **/*.js **/*.ts **/*.tsx" <Bar> cw<CR>
