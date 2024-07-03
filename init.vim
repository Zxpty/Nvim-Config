call plug#begin('~/.local/share/nvim/plugged')
  Plug 'jiangmiao/auto-pairs'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'andweeb/presence.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'ellisonleao/gruvbox.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

so ~/.config/nvim/lua-tree.lua
so ~/.config/nvim/telescope.lua

set background=light 
colorscheme gruvbox
let g:mapleader = ' '
let g:maplocalleader = ' '
set backspace=2
set showcmd
set laststatus=2
set cursorline
set autoread
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set number

autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -DLOCAL -std=c++17 % -o %:r<CR>
autocmd filetype cpp nnoremap <F6> :vsp <CR> :term ./%:r <CR>

