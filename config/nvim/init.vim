call plug#begin('~/.config/nvim/plugged/')

Plug 'preservim/nerdcommenter'
Plug 'merlinrebrovic/focus.vim'
Plug 'morhetz/gruvbox'
Plug 'justinmk/vim-sneak'
Plug 'https://github.com/jez/vim-better-sml'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'ackyshake/Spacegray.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-fugitive'
Plug 'dragonxlwang/vim-better-search'

call plug#end()

let g:airline_theme='lessnoise'

nnoremap <SPACE> <Nop>
let mapleader=" "

inoremap jk <Esc>
set number

nnoremap <leader>fi :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>ex :Commands<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprev<CR>
nnoremap <leader>cf :ClangFormat<CR>
nnoremap <leader>er :call CocAction('diagnosticNext')<CR>

colorscheme less 
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

" Git bindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>


