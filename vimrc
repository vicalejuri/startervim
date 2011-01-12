" 
" Configure vim to suck less
" Author: frangossauro
"


" Fix vim defaults 
set nocompatible
set lazyredraw
set ttyfast
set backspace=indent,eol,start 	" backspace works as expected
set nostartofline 		        " Make j/k respect the columns (after all, this is not a freaking typewriter) 
set modeline 			        " Respect modeline of the file (the famous "vi:noai:sw=3 ts=6" on the beginning of the files)
set hidden 			            " Avoid asking to save before hiding
set enc=utf-8
"setlocal spell spelllang=en_us  " I assume you code in english

filetype on
filetype plugin on
filetype indent on

colorscheme molokai 
syntax on


" Basic UI 
set visualbell
set shm=atIWswxrnmlf
set ruler
set title
set titlestring=%f%(\ [%M]%) 	" Show file name at the title
set numberwidth=1
set report=2
set laststatus=2 		
set statusline=%f
set showcmd
set showmode
set winminheight=0


"
" Bend vim features and behaviors to our wishes. 
"

" for mistyping :w as :W
command! W :w

"
" Command-mode completion
"
set wildmenu
set wildignore=*.o,*.obj,*.pyc,*.swc,*.DS_STORE,*.bkp
set wildmode=list:longest

" Insert-mode completion
set complete=.,w,b,u,U,t,i,d

" Scrolling
set scroll=5
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
" Indentation
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
" Autocomplete
"
set infercase
set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete

"
" Soft/Hard Wrapping
"
set wrap
set textwidth=79
set formatoptions=qrn1

"
" History and backup
"
set viminfo='10,:20,\"100,%,n~/.viminfo
set history=1000
set nobackup
set nowritebackup
set noswapfile

"
" Persistent-undo (vim 7.3)
" 
if has("persistend_undo")
    set undofile
    set undodir=/tmp
endif


"
" Tabs
"
set guitablabel=%N/\ %t\ %M

"
" Grep
"
set grepprg=ack
set grepformat=%f:%l:%m

" Format
set formatprg=par

" GUI Options
"if has("mouse")
	"set mouse=a
	"set mousefocus
"endif

if has("gui_running")
    colorscheme molokai
    set cursorline
	set gfn:Monaco:h13
	set transp=2

	" Don't show toolbar and scrollbars
	set go-=T to
	set guioptions-=L
	set guioptions-=r

    " Highlight wrong spelling
    highlight SpellBad term=underline gui=undercurl guisp=Orange

    " Use system clipboard
    set clipboard=unnamed
endif


" Enable vim-bundles
call pathogen#runtime_append_all_bundles()

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

"
" Nerd Commenter
" --- BUNDLE: http://github.com/scrooloose/nerdcommenter.git

" Less annoying delimiters - DelimitMate
" --- BUNDLE: http://github.com/Raimondi/delimitMate.git
let delimitMate_smart_quotes = 1
let delimitMate_visual_leader = ","

"
" FakeClip
" --- BUNDLE: https://github.com/kana/vim-fakeclip.git

" snipMate 
" --- BUNDLE: http://github.com/msanders/snipmate.vim.git

" SuperTab
" --- BUNDLE: http://github.com/ervandew/supertab.git
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabCrMapping = 0

"
" Matchit
" --- BUNDLE: http://github.com/edsono/vim-matchit.git

"
" vim-align 
" --- BUNDLE: http://github.com/tsaleh/vim-align.git

"
" vim-tabular
" --- BUNDLE: git://github.com/godlygeek/tabular.git

"
" Vim-Fugitive
" --- BUNDLE: http://github.com/tpope/vim-fugitive.git
set statusline+=%{fugitive#statusline()}

"
" Vim-Cucumber
" --- BUNDLE: git://github.com/tpope/vim-cucumber.git

"
" Tmux Shell
" --- BUNDLE: git://github.com/Frangossauro/tslime.vim.git

"
" Ruby
" --- BUNDLE: http://github.com/vim-ruby/vim-ruby.git

"
" Rails
" --- BUNDLE: http://github.com/tpope/vim-rails.git

"
" Python
" --- BUNDLE: git://github.com/ehamberg/vim-cute-python.git
" --- BUNDLE: git://github.com/fs111/pydoc.vim.git 
" --- BUNDLE: git://github.com/kevinw/pyflakes-vim.git
let python_highlight_all = 1

"
" Your own key-maps and functions
" 
source ~/.vimrc-keymaps

"
" Filetypes
"
if has("autocmd")

    " Save on focusLost
    autocmd FocusLost * :wa

    " Recognize 
    autocmd BufRead,BufNewFile *.json set filetype=json
    autocmd BufRead,BufNewFile *.less set filetype=less
    autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

    autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab 
    autocmd FileType css        setlocal ts=2 sts=2 sw=2 expandtab 
    autocmd FileType ruby       setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab 
    autocmd FileType json       setlocal ts=2 sts=2 sw=2 noexpandtab 

    " Remove trailing spaces
    autocmd BufWritePre *.py :call StripTrailingWhitespaces()
    autocmd BufWritePre *.rb :call StripTrailingWhitespaces()
    autocmd BufWritePre *.sh :call StripTrailingWhitespaces()
    autocmd BufWritePre *.js :call StripTrailingWhitespaces()
    autocmd BufWritePre *.css :call StripTrailingWhitespaces()
    autocmd BufWritePre *.json :call StripTrailingWhitespaces()
    autocmd BufWritePre *.html :call StripTrailingWhitespaces()

endif
