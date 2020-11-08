SettingFile
====
### ZSH 配置安装

#### 源码安装
一般系统默认安装了 zsh，只需 oh-my-zsh 安装即可。下列方式任选其一即可。
```
4.安装on my zsh
# curl 方式
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# wget 方式
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
#### 主题配置
1.c查看oh my zsh主题
```bash
ls ~/.oh-my-zsh/themes
```
2. 执行修改
打开配置文件，并修改内容：`ZSH_THEME = "some-thene"`
```bash
vim ~/.zshrc
```

值得一提的是，可以修改成 random，随机体验各式皮肤。

### vim8 源码安装
#### 下载并进入相关目录
git clone https://github.com/vim/vim.git
cd vim

#### 安装相关环境
这里可能没有权限安装，所以考虑编译安装相关依赖环境，后续配置要做相应的变更
```bash
yum install git -y
yum install gcc gcc-c++ -y
yum install ncurses-devel -y
yum install python3 python3-devel -y
```

#### 编译配置

```bash
./configure --with-features=huge \
            --enable-multibyte \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local/vim8
make
make install
```

|参数|描述|
|---|---|
|--with-features=huge	|支持最大特性|
|--enable-python3interp	|打开对python3编写的插件的支持|
|--enable-rubyinterp	|打开对ruby编写的插件的支持|
|--enable-luainterp	|打开对lua编写的插件的支持|
|--enable-perlinterp	|打开对perl编写的插件的支持|
|--enable-multibyte	|打开多字节支持，可以在Vim中输入中文|
|--enable-cscope	|打开对cscope的支持，cscope是一款优秀的代码浏览工具|
|--with-python3-config-dir=/usr/lib/python3./config*/	|指定python3路径|
|--prefix=/usr/local/vim	|指定将要安装到的路径(默认安装再/usr/local/bin/vim)|
|--enable-fontset	|支持字体设置|
|--enable-gui=gtk2	|gtk2支持,也可以使用gnome，表示生成gvim|
|--with-compiledby	|编译者|

编译完成之后，git 下载的 vim 就可以删除了，安装之后的软件在 /usr/local/vim8/bin 下，自行运行。方便起见，可以配置新的 vim 到环境变量：
```
alias='/usr/local/vim8/bin/vim'
```
需要注意的是，如果没有 root 权限，安装地址指定为 ~/.local/share 较为妥当

#### vimrc 配置

1. 安装 plugin 插件
http://vra.github.io/2019/03/12/vim-plug-intro/
2. 下载插件
开Vim,在命令模式下输入:PlugInstall即可安装配置文件中设有的所有插件

#### 插件安装
1. [gocode](https://github.com/mdempsky/gocode)
>> 先安装 gocode 到环境中, 然后配置到 vim
cd ${GOPATH}/src
go get github.com/nsf/gocode
go install github.com/nsf/gocode

2. godef
gd 即可

### vscode 配置文件
