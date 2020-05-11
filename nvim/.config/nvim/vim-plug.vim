call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'jpalardy/vim-slime'
Plug 'luochen1990/rainbow'
" Plug 'l04m33/vlime', {'rtp': 'vim/'}
Plug 'vlime/vlime'

" :PlugInstall to install
" :PlugClean to uninstall unlisted plugins

call plug#end()
