" 
" Configure vim to suck less
"

let softab    = "on"
let tabsize   = 4
let mapleader = ","
let arrowkeys = "off"
let gui_font  = "Monaco:h12"

source ~/.vimrc-defaults

colorscheme molokai

" Default bundles
Bundle 'scrooloose/nerdtree'
Bundle 'scrolloose/nerdcomments'
Bundle 'msanders/snipmate.vim'
Bundle 'godlygeek/tabular'
Bundle 'ervandew/supertab'

Bundle 'raimondi/delimitMate'
let delimitMate_visual_leader = ","

Bundle 'tpope/vim-fugitive'
set statusline+=%{fugitive#statusline()}

Bundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"if has("autocmd")
"
"    " Save on focusLost
"    autocmd FocusLost * :wa
"
"    " Recognize 
"    autocmd BufRead,BufNewFile *.json set filetype=json
"    autocmd BufRead,BufNewFile *.less set filetype=less
"    autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
"
"    autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab 
"    autocmd FileType css        setlocal ts=2 sts=2 sw=2 expandtab 
"    autocmd FileType ruby       setlocal ts=2 sts=2 sw=2 expandtab
"    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab 
"    autocmd FileType json       setlocal ts=2 sts=2 sw=2 noexpandtab 
"
"    " Remove trailing spaces
"    autocmd BufWritePre *.py :call <SID>StripTrailingWhitespaces()
"    autocmd BufWritePre *.rb :call <SID>StripTrailingWhitespaces()
"    autocmd BufWritePre *.sh :call StripTrailingWhitespaces()
"    autocmd BufWritePre *.js :call StripTrailingWhitespaces()
"    autocmd BufWritePre *.css :call StripTrailingWhitespaces()
"    autocmd BufWritePre *.json :call StripTrailingWhitespaces()
"    autocmd BufWritePre *.html :call StripTrailingWhitespaces()
"
"endif
