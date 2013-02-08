" ===============================
" Brian Clark's Vim Configuration
" ===============================

" Use Vim settings rather than Vi.. do this first due to ripple-effect
set nocompatible

" ==== Pathogen Initialization ====
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

" ========== General Config ==========
set ruler                           " Show cursor position
set number                          " Show line numbers
set backspace=indent,eol,start      " Allow backspace the way I want it
set history=500                     " Keep more :cmdline history
set showcmd                         " Show partial commands at bottom
"set gcr=a:blinkon0                  " Disable cursour blink
set visualbell                      " No sounds
syntax on                           " Syntax highlighting
"set autoread                        " Reload files changed outside vim

" Make vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ========== Search Settings ==========
set incsearch           " Find the next match as we type the search
set viminfo='100,f1     " Save up to 100 marks, enable capital marks
set hlsearch            "Higlight searches by default... <C-L> mapping below turns off
set ignorecase          " Use case-insensitive search...
set smartcase           " Except when using capital letters

" ========== Turn Off Swap Files ==========
"set noswapfile
"set nobackup
"set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups
"set undofile

" ========== Indentation Settings ==========
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set smarttab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:.

set linebreak   " Wrap lines at convenient points

" ========== Folds ==========
set foldmethod=indent       " Fold based on indent
set foldnestmax=3           " Deepest fold is 3 levels
set nofoldenable            " Don't fold by default



" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline


" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
"set notimeout ttimeout ttimeoutlen=200

" ========== Completion ==========
set wildmode=list:longest
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~     " Stuff to ignore when tab completing
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ========== Scrolling =========
set scrolloff=6
set sidescrolloff=12
set sidescroll=1

" ========== Mappings ==========
" Temporarily disable highlighting
nmap <silent> <leader>n :silent :nohlsearch<CR>
" Toggle listchars visibility (tabs, spaces, etc.)
nmap <silent> <leader>s :set nolist!<CR>

" Toggle paste from clipboard
set pastetoggle=<F11>

" ========== Visualization Settings ==========
if has ('win32')
    set guifont=Lucida_Console:h11
    set guifont=Ubuntu_Mono:h12
endif

if has ('gui_running')
    "set background=light
else
    set background=dark
    set t_Co=256
    let g:solarized_termcolors=256
endif

colorscheme solarized
