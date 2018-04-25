syntax enable
set nu
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let python_highlight_all=1
set clipboard=unnamed " use the osx clipboard
set nocompatible 
set backspace=indent,eol,start " enable delete/backspace key to delete
" set colorcolumn=81
set encoding=utf-8

set shiftwidth=4
set autoindent
set smartindent
set nocompatible 
filetype off 

" set vundle and related runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'
Plugin 'hhatto/autopep8'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tmhedberg/SimpylFold'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'


" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'


" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
"
" Enable completion where available.
let g:ale_completion_enabled = 1

" nerdtree setting
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" YouCompleteMe setting
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = 'python' " change to the current python interpreter (useful for virtual env or anaconda)
let $PYTHONPATH .= getcwd() " when importing myself's other module, let YCM to complete
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" ale python linter
let g:ale_linters = {'python': ['flake8'], 'reStructuredText': ['rstcheck']}
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}

" open and close TagBar and NerdTree
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR> " show and close NERDTree

" for python autoformat
noremap <F3> :Autoformat<CR> " autoformat codes
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" Map Begin/End of a line
noremap H ^
noremap L $
