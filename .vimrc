"""""""""""""""""""""""""""""""""""""""""""""
""  Vim configuration file for nibares
"""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf8

"set vim font
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

""" START Vundle configuration

" Vim improve
set nocompatible "be iMproved *required

" Disable filetype for vundle
filetype off     " *required

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/plugin/

call vundle#begin()

	" let Vundle manage vundle *required
	Plugin 'VundleVim/Vundle.vim'

	" Utility
	Plugin 'scrooloose/nerdtree' "Nerdtree
    Plugin 'scrooloose/nerdcommenter'  "Nerdcommenter
	Plugin 'majutsushi/tagbar' "Tagbar
    Plugin 'ctrlpvim/ctrlp.vim' "CtrlP
    
	" Generic programming support
	Plugin 'jakedouglas/exuberant-ctags'
    Plugin 'Valloric/YouCompleteMe'	
    "Plugin 'vim-syntastic/syntastic'
    Plugin 'Townk/vim-autoclose'
    Plugin 'octol/vim-cpp-enhanced-highlight'

	" Markdown / Writing
	Plugin 'reedes/vim-pencil'
	Plugin 'tpope/vim-markdown' 
    "Plugin 'LanguageTool'

    " Theme / Interface
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'dracula/vim'
    Plugin 'ryanoasis/vim-devicons'

call vundle#end() " *required
filetype plugin indent on " *required
""" End Vundle configuration

"set nowrap

" show linenumbers
set number
set ruler

" set propertabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display status line
set laststatus=2

" Enable elite mode
let g:elite_mode=1

"set cursorline

" Theme and styling
syntax on
set t_Co=256
set background=dark

let base16colorspace=256 " Access colors present in 256 colorspace

colorscheme dracula "before I used default

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

let g:airline_theme='dracula'

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''               
let g:airline_right_alt_sep = '' 
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''  

" Nerdcommenter
let g:NERDSpaceDelims=1 "add space after comments char

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile, BufRead *.md, *.markdown setlocal filetype =ghmarkdown
augroup END

" Settings for Writting
let g:pencil#wrapModeDefault = 'soft' " default is 'hard'

" Vim-pencil Configuration
augroup pencil
    autocmd!
    autocmd FileType markdown,mkd call pencil#init()
    autocmd FileType text         call pencil#init()
augroup END

" YouCompleteMe Fix
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

""""""""""""""""""""""""""
" Mappings configuration
""""""""""""""""""""""""""

"map <C-n> :NERDTreeToggle<CR>
"map <C-m> :TagbarToggle<CR>

" Disable arrow movement, resize splits instead.
" if get(g:, 'elite_mode')
    " nnoremap <Up> :resize +2<CR>
    " nnoremap <Down> :resize -2<CR>
    " nnoremap <Left> :vertical resize +2<CR>
    " nnoremap <Right> :vertical resize -2<CR>
" endif
