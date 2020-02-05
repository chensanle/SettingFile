call plug#begin('~/.vim/plugged')

" 用来提供一个导航目录的侧边栏
Plug 'scrooloose/nerdtree'

Plug 'itchyny/lightline.vim'

" go main plug
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" 配色方案
Plug 'KeitaNakamura/neodark.vim'
Plug 'acarapetis/vim-colors-github'
Plug 'rakr/vim-one'
Plug 'arzg/vim-corvine'
Plug 'lifepillar/vim-solarized8' " 浅色好看 termguicolors
Plug 'altercation/vim-colors-solarized'

" vim 状态栏插件
Plug 'vim-airline/vim-airline'

" go 中的代码追踪，输入 gd 就可以自动跳转
Plug 'dgryski/vim-godef'

" markdown 插件
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

call plug#end()

"==============================================================================
" 主题配色
"==============================================================================
syntax on
set t_Co=256
" set termguicolors | dark | light
if $TERM =~ "xterm"
    colorscheme neodark
    set background=dark
else
    set termguicolors
    set background=light
endif
"==============================================================================
" NERDTree 插件
"==============================================================================

" 打开和关闭NERDTree快捷键
map <F10> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
" 打开文件时是否显示目录
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
" let NERDTreeWinSize=31
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks=2
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2

""""""""""""""""""""""""
"Base config by:left "
"""""""""""""""""""""""
set nocompatible
syntax on "语法高亮
filetype on
set number "设置行号
set wildmenu "命令行模式tab键自动补齐
set history=1000 "历史命令个数
set autoindent "自动对齐
"set smartindent "开启新行时智能缩进
set tabstop=4 "设置tab键长度为４
set expandtab
set shiftwidth=4
set softtabstop=4
set showmatch "插入括号时短暂的跳转到匹配的对应括号
set guioptions=T
set vb t_vb=
set ruler "打开状态栏标尺
set nohls
set incsearch "输入搜索内容是就显示结果
set hlsearch "设置高亮搜索文本
set cursorline "突出显示当前行
set backspace=2

""""""""""""""""""""""""
" gocode
""""""""""""""""""""""""
" 默认开启 ctrl + x/d
" 自动开启需要设置

filetype plugin on
