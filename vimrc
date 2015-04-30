" vim-plug (https://github.com/junegunn/vim-plug)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.vim/plugged')

" Utils
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-dispatch'
Plug 'ervandew/supertab'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'edkolev/tmuxline.vim'
Plug 'craigemery/vim-autotag'

" Unite
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/unite.vim'
Plug 'rstacruz/vim-fastunite'

Plug 'Shougo/neocomplcache.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite-outline'
Plug 'tsukkee/unite-tag'

" Languages
Plug 'c9s/cpan.vim'
Plug 'moznion/vim-cpanfile'
Plug 'vim-perl/vim-perl'
Plug 'hokaccha/vim-prove'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'avakhov/vim-yaml'

" Theme
Plug 'jnurmine/Zenburn'

call plug#end()

colors zenburn
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:neocomplcache_enable_at_startup = 1
set nobackup
set noundofile
set fillchars=vert:\│
