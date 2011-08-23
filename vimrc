" 
" Configure vim to suck less
"
let softab    = "on"
let tabsize   = 4
let arrowkeys = "off" 			" Enable this if you like to use the arrow keys to move. I highly discourage you.
let gui_font  = "Monaco:h12"
let mapleader = ","

source ~/.vimrc-defaults

" Feel free to the files below (helpers functions, autocommands and key shortcuts)
source ~/.vimrc-helpers
source ~/.vimrc-au
source ~/.vimrc-keymaps

colorscheme molokai

" Default bundles
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'
Bundle 'godlygeek/tabular'
Bundle 'ervandew/supertab'

Bundle 'Raimondi/delimitMate.git'
let delimitMate_visual_leader = ","

Bundle 'tpope/vim-fugitive'
set statusline+=%{fugitive#statusline()}

Bundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
