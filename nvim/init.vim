call plug#begin()

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'xiyaowong/nvim-transparent'
Plug 'projekt0n/github-nvim-theme'

call plug#end()

au VimEnter * nested NERDTreeToggle
au VimEnter * colorscheme github_dark_default
au VimEnter * TransparentEnable
