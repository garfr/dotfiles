call plug#begin('~/.config/nvim/plugged/')

Plug 'preservim/nerdcommenter'
Plug 'justinmk/vim-sneak'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'rhysd/vim-clang-format'

call plug#end()

set number
colorscheme less 
set termguicolors
set hidden

nnoremap <SPACE> <Nop>
let mapleader=" "

inoremap jk <Esc>

nnoremap <leader>fi :Files<CR>
nnoremap <leader>b :Buffers<CR>

nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprev<CR>

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

let g:clang_format#auto_format = 1

nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gc :Git commit -v -q<CR>
nnoremap <leader>gt :Git commit-v -q %:p<CR>
nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Git push<CR>
nnoremap <leader>gpl :Git pull<CR>
