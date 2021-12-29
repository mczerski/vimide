"basic editor setup
set nocompatible
syntax on
set exrc
set secure
"setup identiation
set noexpandtab
set listchars=tab:>-
set tabstop=8
set softtabstop=8
set shiftwidth=8
"make backspace work like in most other programs
set backspace=indent,eol,start
"hit tab in command mode to get list af all matching command, then hit tab again to cycle them
set wildmode=list:longest,full
set wildmenu
"show spaces, tabs, etc.
set list
filetype plugin indent on
set number
"search selected text in visual mode with //
vnoremap // y/<C-R>"<CR>
"to search for word under the cursor hit f4 (this is configured in {py,cc}.vimrc)

"vertical column
set colorcolumn=80
highlight ColorColumn ctermbg=gray

"tips:
"fuzzy file search
":e **/*<some text> then hit tab
