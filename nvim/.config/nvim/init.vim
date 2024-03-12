" config
" source ~/.config/nvim/coc.vim
source ~/.config/nvim/vim-plug.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/easymotion.vim
source ~/.config/nvim/slime.vim
source ~/.config/nvim/rainbow.vim
source ~/.config/nvim/vlime.vim


" not plugin spefic config
map <Space> <Leader>

syntax on

" peachpuff is neovim default colors
" colorscheme peachpuff

" using the 'one' colorscheme instead
let g:airline_theme='one'
set background=light        " for the light version
let g:one_allow_italics = 1 " I love italic for comments

set number 
set incsearch
set ignorecase
set smartcase

set statusline+=%f

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set scrolloff=5

set mouse=a

highlight MatchParen ctermfg=darkblue ctermbg=NONE cterm=NONE


nnoremap j gj
nnoremap k gk
