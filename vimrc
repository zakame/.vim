" vim-plug (https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')

" Utils
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/unite.vim'
Plug 'ervandew/supertab'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'

" Languages
Plug 'c9s/cpan.vim'
Plug 'moznion/vim-cpanfile'
Plug 'vim-perl/vim-perl'
Plug 'hokaccha/vim-prove'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'avakhov/vim-yaml'

call plug#end()

syntax on
filetype plugin indent on
let g:airline_powerline_fonts = 1
set nobackup
set noundofile
set fillchars=vert:\│
