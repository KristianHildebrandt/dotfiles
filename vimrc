if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/kristian/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/kristian/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ervandew/supertab'
NeoBundle 'mattn/emmet-vim/'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'jeetsukumaran/vim-buffergator'
NeoBundle 'tpope/vim-rails'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-colorscheme-switcher'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'valloric/MatchTagAlways'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'fatih/vim-go'
NeoBundle 'outsmartin/haproxy.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'mbbill/undotree'
NeoBundle 'rking/ag.vim'
NeoBundle 'groenewege/vim-less'

runtime macros/matchit.vim

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
