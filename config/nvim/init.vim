call plug#begin('~/.config/nvim/plugged/')

Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox

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

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
