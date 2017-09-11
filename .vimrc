"""""""""""""""""""""""""""""""""""""""""""""
""  Vim configuration file for nibares
"""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf8

""" START Vundle configuration

" Vim improve
set nocompatible "be iMproved *required

" Disable filetype for vundle
filetype off     " *required

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

	" let Vundle manage vundle *required
	Plugin 'VundleVim/Vundle.vim'

	" Utility
	Plugin 'scrooloose/nerdtree' "Nerdtree
	Plugin 'majutsushi/tagbar' "Tagbar
    
	" Generic programming support
	Plugin 'jakedouglas/exuberant-ctags'
"	Plugin 'vim-syntastic/syntastic'

	" Markdown / Writing
"	Plugin 'reedes/vim-pencil'
"	Plugin 'tpope/vim-markdown' 

call vundle#end() " *required
filetype plugin indent on " *required

""" End Vundle configuration

"set nowrap

" show linenumbers
set number

" set propertabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display status line
set laststatus=2

" Enable elite mode
"let g:elite_mode=1

set cursorline

" Theme and styling
syntax on
set t_Co=256

let base16colorspace=256 " Access colors present in 256 colorspace

"colorscheme spacegray

" Synstastic config
"set statusline += %#warningmsg#
"set statusline += %{SyntasticStatuslineFlag()}
"set statusline += %*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1 
"let g:syntastic_check_on_open = 1

