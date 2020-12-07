" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Asynchronous Lint Engine
Plug 'dense-analysis/ale'

" Dark powered asynchronous completion framework
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" File detection and syntax highlighting for the zig programming language.
Plug 'ziglang/zig.vim'

" Initialize plugin system
call plug#end()
