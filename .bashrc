GOROOT=/usr/local/go/bin
PATH=$PATH:$HOME/.local/bin:$HOME/bin

export GOPATH=$HOME/godev
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:/usr/local/mongodb/bin

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

alias vim='/home/user/.local/share/vim81/bin/vim'
alias vi='/home/user/.local/share/vim81/bin/vim'
alias tmux='~/.local/bin/tmux'
alias unsetproxy='unset https_proxy ; unset http_proxy ; unset all_proxy; echo "unset http&https&socks5 proxy ok"'
alias setproxy='export http_proxy=host:8080 https_proxy=http://host:8080 all_proxy=socks5://host:8080 ; echo "set http&https&socks5 proxy ok"'
alias cdlog01='cd /home/s/apps/'
alias hostname='echo "somethings"'
