SettingFile
====
### vim 源码安装
1. 下载
git clone https://github.com/vim/vim.git
cd vim

2. 编译配置

./configure --with-features=huge \ 
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-python3interp \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/home/some-people/.local/share/vim-awesome
            
make install

### vimrc 配置文件

#### 主要过程
1. 安装 plugn 插件
http://vra.github.io/2019/03/12/vim-plug-intro/
2. 下载插件
开Vim,在命令模式下输入:PlugInstall即可安装配置文件中设

#### 插件介绍
1. [gocode](https://github.com/mdempsky/gocode)
>> 先安装 gocode 到环境中, 然后配置到 vim
cd ${GOPATH}/src
go get github.com/nsf/gocode
go install github.com/nsf/gocode

2. godef
gd 即可

### vscode 配置文件
