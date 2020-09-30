"Vundle
set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须
 
set rtp+=~/.vim/bundle/Vundle.vim "vundle安装地址
 
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'fatih/vim-go'
    Plugin 'majutsushi/tagbar'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Blackrush/vim-gocode'
call vundle#end()                                   " 必须
 
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本

syntax on

set nu
set sm
set ts=4
set expandtab
set autoindent
set nocompatible
set backspace=indent,eol,start

let g:go_version_warning = 0 
let g:go_gopls_enabled = 1 
let g:go_highlight_structs = 1 
let g:go_highlight_interfaces = 1 
let g:go_highlight_types = 1 
let g:go_highlight_fields = 1 
let g:go_highlight_functions = 1 
let g:go_highlight_function_calls = 1 
let g:go_highlight_operators = 1 
let g:go_highlight_methods = 1 
let g:go_highlight_build_constraints = 1 

let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
"let g:tagbar_width=30
"let g:tagbar_left=1

"NerdTree####################################################
"去除第一行的帮助提示
let NERDTreeMinimalUI=1
"在左边占多宽
let NERDTreeWinSize=28
"不高亮显示光标所在的文件
let NERDTreeHighlightCursorline=0
"当前目录的设定
let NERDTreeChDirMode = 2
"自动退出
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"打开vim时自动打开
autocmd vimenter * NERDTree
"<F2>作为toggle
nmap <F2> :NERDTreeToggle<CR>

"Tagbar######################################################
"在这儿设定二者的分布
let g:tagbar_vertical = 25
"去除第一行的帮助信息
let g:tagbar_compact = 1
"当编辑代码时，在Tagbar自动追踪变量
let g:tagbar_autoshowtag = 1
"个人爱好，展开关闭文件夹的图标
let g:tagbar_iconchars = ['▸', '▾']
"<F3>作为toggle
nmap <F3> :TagbarToggle<CR>
"打开vim时自动打开
autocmd VimEnter * nested :TagbarOpen
wincmd l
"如果不加这句，打开vim的时候当前光标会在Nerdtree区域
autocmd VimEnter * wincmd l
