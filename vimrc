" vim-plug (https://github.com/junegunn/vim-plug)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" Utils
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-speeddating'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'edkolev/tmuxline.vim'
Plug 'craigemery/vim-autotag'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'sjl/gundo.vim'

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
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim'
Plug 'moll/vim-node'
Plug 'avakhov/vim-yaml'
Plug 'rstacruz/vim-css-shorthand'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'jceb/vim-orgmode'

" Theme
Plug 'jnurmine/Zenburn'

call plug#end()

silent! colors zenburn
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:go_fmt_command = "goimports"
let g:neocomplcache_enable_at_startup = 1
let g:tern#command = ['tern']
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
set nobackup
set noundofile
set fillchars=vert:\│
nnoremap <F5> :GundoToggle<CR>
map <c-p> [unite]p
