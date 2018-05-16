" Plugin autoload setup (download if not already in place)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start plugin management
call plug#begin('~/.vim/plugged')

" Toggleable file navigation from inside vim
Plug 'scrooloose/nerdtree'
" Better syntax highlighting and spacing for JS
Plug 'pangloss/vim-javascript'
" Collection of color schemes, specific one enabled below
Plug 'flazz/vim-colorschemes'
" Auto-close brackets / parens 
Plug 'Townk/vim-autoclose'

" Initialize
call plug#end()

" NerdTree shortcut
map <C-n> :NERDTreeToggle<CR>

" Some good defaults
syntax on
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Color scheme
colorscheme solarized
