" 
" Configure vim to suck less
" Author: frangossauro
"


" Fix vim defaults 
set nocompatible
set lazyredraw
set ttyfast
set backspace=indent,eol,start 	" backspace works as expected
set nostartofline 		        " Make j/k respect the columns (after all, this is not a freaking typewritter) 
set modeline 			        " Respect modeline of the file (the famous "vi:noai:sw=3 ts=6" on the begining of the files)
set hidden 			            " Avoid asking to save before hiding
set enc=utf-8

filetype on
filetype plugin on
filetype indent on

colorscheme default 
syntax on


" Basic UI 
set visualbell
set shm=atIWswxrnmlf
set ruler
set title
set titlestring=%f%(\ [%M]%) 	" Show file name at the title
set numberwidth=1
set report=2
set laststatus=0 		" Always show the last window line
set statusline=%f
set showcmd
set showmode


"
" Bend vim features and behaviours to our wishes. 
"

"
" Command-mode completion
"
set wildmenu
set wildignore=*.o,*.obj,*.pyc,*.swc,*.DS_STORE,*.bkp
set wildmode=list:longest

" Insert-mode completion
set complete=.,w,b,u,U,t,i,d

" Scrolling
set scrolloff=5
set sidescrolloff=5
set sidescroll=1

" Matching
set showmatch
set matchpairs=(:),{:},[:],<:>

" Search and replace
set gdefault 		" Make regexp matches everything, instead of just the first one 
set incsearch 		" Search all instances
set hlsearch 		" Highlight matched regexp 
set ignorecase 		
set smartcase 		" Intelligent case-smart searching

"
" Identation
"
set autoindent
set smartindent
set smarttab
set expandtab
set shiftround
set nojoinspaces
set nofoldenable
set tabstop=4
set softtabstop=4
set shiftwidth=4

"
" AutoCompletion
"
set infercase
set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete

"
" History and backup
"
set viminfo='10,:20,\"100,%,n~/.viminfo
set history=1000
set nobackup
set nowritebackup
set noswapfile

"
" Grep
"
set grepprg=ack
set grepformat=%f:%l:%m


" GUI Options
if has("mouse")
	set mouse=a
	set mousefocus
endif

if has("gui_running")
    colorscheme molokai
    set cursorline
	set gfn:Monaco:h10
	set transp=2

	" Don't show toolbar and scrollbars
	set go-=T to
	set guioptions-=L
	set guioptions-=r
endif


" Enable vim-bundles
call pathogen#runtime_append_all_bundles()

" Helper command to update bundles
function! s:UpdateBundles()
    exec '!ruby ~/.vim/bin/vim-update-bundles.rb'
endfunction
command! -nargs=? UpdateBundles call s:UpdateBundles()

" Syntastic 
" --- BUNDLE: http://github.com/scrooloose/syntastic.git
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Nerd Tree
" --- BUNDLE: git://github.com/scrooloose/nerdtree.git

" Lusty explorer
" --- BUNDLE: git://github.com/sjbach/lusty.git

" Less annoying delimiters - DelimitMate
" --- BUNDLE: http://github.com/Raimondi/delimitMate.git
let delimitMate_smart_quotes = 1
let delimitMate_visual_leader = ""

" snipMate 
" --- BUNDLE: http://github.com/msanders/snipmate.vim.git

" SuperTab
" --- BUNDLE: http://github.com/ervandew/supertab.git
let g:SuperTabCrMapping = 0

"
" VimShell
" --- BUNDLE: http://github.com/Shougo/vimshell.git

"
" Matchit
" --- BUNDLE: http://github.com/edsono/vim-matchit.git

"
" vim-align 
" --- BUNDLE: http://github.com/tsaleh/vim-align.git

"
" Your own key-maps. 
" 
source ~/.vimrc-keymaps

"
" Filetypes
"
autocmd BufRead,BufNewFile *.json set filetype=json
