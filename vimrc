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
Plug 'luochen1990/rainbow'
Plug 'mattn/emmet-vim'

" FZF
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

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
Plug 'digitaltoad/vim-pug'
Plug 'avakhov/vim-yaml'
Plug 'rstacruz/vim-hyperstyle'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'jceb/vim-orgmode'
Plug 'davidhalter/jedi-vim'
Plug 'junegunn/limelight.vim'

" Theme
" Plug 'jnurmine/Zenburn'

call plug#end()

silent! colors default
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_concel_guifg = 'DarkGray'
let g:rainbow_active = 1
let g:rainbow_conf = { 
      \ 'guifgs': ['darkgray'], 
      \ 'ctermfgs': ['darkgray'],
      \ 'separately': { 'html': 0 }
      \ }
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme = "term"
let g:fzf_command_prefix = "Fzf"
let g:go_fmt_command = "goimports"
let g:neocomplcache_enable_at_startup = 1
let g:tern#command = ['tern']
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
set nobackup
set nofoldenable
set noundofile
set fillchars=vert:\│
nnoremap <F5> :GundoToggle<CR>
map <c-p><c-f> :FzfFiles<CR>
map <c-p><c-g> :FzfGitFiles<CR>
map <c-p><c-b> :FzfBuffers<CR>
map <c-p><c-t> :FzfTags<CR>
map <c-p><c-r> :FzfHistory<CR>
map <c-p><c-c> :FzfAg<CR>
map <c-p><c-o> :FzfBLines<CR>
