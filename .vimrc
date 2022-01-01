""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  __ __ __ __ __    _____ _____ _ _ _                         "
" |  |  |  |  |  |  |   __|     | | | |                        "
" |_   _|_   _|  |__|   __|  |  | | | |                        "
"   |_|   |_| |_____|_____|_____|_____|                        "
"                                                              "
" Maintainer: Leow Yuan Yang                                   "
"                                                              "
" Sections:                                                    "
"   (1) General Configurations                                 "
"   (2) Plugin Management                                      "
"   (3) Key Mappings                                           "
"   (4) Graphical Configurations                               "
"   (5) Acknowledgements                                      "
"                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General configurations                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn on shared clipboard
set clipboard=unnamed
" if the line is too long, soft-wrap it to the next line
set linebreak
" num of chars before the end of screen to start wrapping
set wrapmargin=3
" turn on line numbering
set number
" no tabbing. <tab> is expanded into spaces
set expandtab
" set tab to equal to four spaces
set tabstop=4
" set shift to four spaces 
set shiftwidth=4
" turn on auto-indentation
set autoindent
" turn on smart indent
set smartindent
" show partial command in the last line of the screen
set showcmd
" control behavor of backspace
set backspace=indent,eol,start
" make a backup before overwriting a file
set writebackup
" create a backup file after each edit
set backup
" store the backup file in this directory
set backupdir=~/.backup
" blink instead of beeping
set visualbell
" scroll offset is 1 line
set scrolloff=1
" show information about the cursor
set ruler
" always show the status line
set laststatus=2
" which keys wraps the cursor to the next/prev line
set whichwrap=b,s,h,l,<,>,[,]
" what starts a line of comments
set comments=sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-,n:\:
" when we join two lines, no spacing inserted
set nojoinspaces
" retains info across editing sessions
set viminfo='100,<50,s10,h
" add < > to pair matching;
set matchpairs+=<:>
" auto insert comment leader after hitting <enter> 
set formatoptions+=r
" turn on syntax highlighting
syntax on
" nice font for gvim
set guifont=LiberationMono\ 12


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Management                                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"turn of backward compatibilty with Vi
set nocompatible
" turn on filetype detecton 
filetype off
" set runtimepath for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" initialize Vundle
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " required for Vundle
Plugin 'jiangmiao/auto-pairs' " auto closing
Plugin 'preservim/nerdtree' " file system explorer
" Plugin 'valloric/youcompleteme' " auto complete
Plugin 'itchyny/lightline.vim' " status bar
Plugin 'vimwiki/vimwiki' " notetaking

" terminate Vundle
call vundle#end() " terminate Vundle
" turn on plugin per filetype
filetype plugin on
" turn on auto-indent per filetype
filetype indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Mappings                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " " " set leader key as spacebar

" search and replace single line
nnoremap <Leader>s :s/
" search and replace entire document
nnoremap <Leader>ss :%s/
" write file with overwrite
nnoremap <Leader>w :w!<Enter>
" write and quite file with overwrite
nnoremap <Leader>q :wq!<Enter>
" delete to end of line
nnoremap <Leader>d d$
" yank to end of line
nnoremap <Leader>y v$y
" insert new line below without insert mode
nnoremap <Leader>o o<Esc>
" vertical split screen
nnoremap <Leader>vs :vsp 
" horizontal split screem
nnoremap <Leader>hs :hsp 
" move cursor to bottom of page
nnoremap <Leader>g G
" open NERDTree
nnoremap <Leader>n :NERDTree<Enter>
" move to end of line
nnoremap ; $

" search and replace
vnoremap <Leader>s :s/
vnoremap ; $


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Graphical Configurations                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" define colorscheme
colorscheme monokai

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Acknowledgements                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" monokai colorscheme
"   https://github.com/sickill/vim-monokai

