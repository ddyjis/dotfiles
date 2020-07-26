" install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax enable           " syntax coloring

set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces

set nu rnu              " hybrid numbering

set cursorline          " highlight current line

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set autoindent          " auto indent in new line

" load vim-plug plugins
call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'  " install nord-vim
call plug#end()

colorscheme nord        " set nord-vim theme

start                   " start insert mode by default