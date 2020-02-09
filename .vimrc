" 显示行号
set number
" tab设置为4个空格
set tabstop=4     
" 自动缩进使用的空白长度
set shiftwidth=4
" 设置expandtab的情况下，输入backspace删除的空格
set softtabstop=4
" 敲入tab将其转化为空格
set expandtab   
" 将vim的buffer和系统剪贴板进行绑定
set clipboard=unnamed   
" 语法高亮
syntax on
" 使用颜色主题
syntax enable
set background=dark
colorscheme solarized
" 搜索词高亮
set hlsearch
" 按F2进入粘贴模式
set pastetoggle=<F2>
" 不兼容vi模式
set nocompatible
" 文件类型，插件，缩进开启
filetype plugin indent on

" 映射
let mapleader=','
" 使用leader+w直接保存
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w <Esc>:w<cr>
" 使用jj进入normal模式
inoremap jj <Esc>`^
vnoremap jj <Esc>`^
" use Ctrl+h/j/k/l to switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"sudo to write
cnoremap w!! w !sudo tee % >/dev/null
" JSON格式化
com! FormatJSON %!python -m json.tool

" plugin
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
call plug#end()

nnoremap <leader>g :NERDTreeToggle<cr>
nnoremap <leader>v :NERDTreeFind<cr>
" 显示隐藏文件
let NERDTreeShowHidden=1
" 过滤: 所有指定文件和文件夹不显示
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.egg-info$', '\.swp$', '\.swo', '\.vscode', '__pycache__',
            \ '\.svn$', '\.git$', '\.DS_Store$'] 

" 模糊搜索，快速定位文件
let g:ctrlp_map = '<c-p>'
" easymotion查询
nmap ss <Plug>(easymotion-s2)
