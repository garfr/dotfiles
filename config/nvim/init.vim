call plug#begin('~/.config/nvim/plugged/')

Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'ackyshake/Spacegray.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-fugitive'

call plug#end()

let g:airline_theme='base16'

nnoremap <SPACE> <Nop>
let mapleader=" "

inoremap jk <Esc>
set number

nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>e :Commands<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprev<CR>
nnoremap <leader>cf :ClangFormat<CR>

colorscheme spacegray
set termguicolors
set hidden

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:clang_format#auto_format = 1
