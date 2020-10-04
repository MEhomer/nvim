" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Themes
    Plug 'joshdick/onedark.vim'

    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Airline Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Fuzzy search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Git integrations
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'

    " Smooth scrolling
    Plug 'psliwka/vim-smoothie'

    " Vim startify
    Plug 'mhinz/vim-startify'

    " Vim commentary (comment stuff out)
    Plug 'tpope/vim-commentary'

    " Vim Multiple Cursors
    Plug 'terryma/vim-multiple-cursors'

    " Vim Surround
    Plug 'tpope/vim-surround'

    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
