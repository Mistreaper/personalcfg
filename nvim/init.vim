call plug#begin()

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'xiyaowong/nvim-transparent'
Plug 'projekt0n/github-nvim-theme'

call plug#end()

colorscheme github_dark_default
" enable transparency
au VimEnter * TransparentEnable
" NERDTree
au VimEnter * NERDTree
