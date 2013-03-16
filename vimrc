call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" ================ General Config ====================

set number "Line numbers are good
set backspace=indent,eol,start "Allow backspace in insert mode
set history=1000 "Store lots of :cmdline history
set showcmd "Show incomplete cmds down the bottom
set showmode "Show current mode down the bottom
set gcr=a:blinkon0 "Disable cursor blink
set visualbell "No sounds
set autoread "Reload files changed outside vim
let mapleader="," "leader to comma
set nocompatible "better save than sorry
set mouse=a "mouse support
set clipboard+=unnamed
:imap jj <Esc> " map ESC to jj

runtime macros/matchit.vim

" necessaru for textobj-ruby
set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

" display trailing spaces
set listchars=tab:>-,trail:.
set list

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" ================ Search Settings =================

set incsearch "Find the next match as we type the search
set hlsearch "Hilight searches by default
set viminfo='100,f1 "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set cindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"

" ================ Scrolling ========================

set scrolloff=8 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" fast saving and quitting
nmap <leader>w :w<cr>
nmap <leader>wq :wq<cr>
nmap <leader>q :q<cr>

" font
set guifont=Monaco:h12

" zeus plugin
map <Leader> zc :ZeusConsole<CR>
map <Leader> zr :ZeusRake spec<CR>
map <Leader> zg :ZeusGenerate<space>