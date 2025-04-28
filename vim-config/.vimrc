set nocompatible              " be iMproved
filetype off                  " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle itself
Plugin 'VundleVim/Vundle.vim'

" Add your plugins here
Plugin 'jellybeans/vim-colorscheme'
Plugin 'junegunn/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'ycm-core/YouCompleteMe'

" All of your plugins must be added before this line
call vundle#end()            " required
filetype plugin indent on    " required

" Set color scheme
colorscheme jellybeans
