" line numbers
set number
set relativenumber

" tab size
set tabstop=4
set shiftwidth=4
set autoindent

" Install plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" nextflow
call plug#begin()
Plug 'LukeGoodsell/nextflow-vim'
call plug#end()
