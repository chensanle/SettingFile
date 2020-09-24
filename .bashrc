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
alias unsetproxy='unset https_proxy ; unset http_proxy ; unset HTTP_PROXY ; unset HTTPS_PROXY; echo "unset http&https proxy ok"'
alias setproxy='http_proxy=host:8080; HTTP_PROXY=host:8080; echo "set http&https proxy ok"'
alias cdlog01='cd /home/s/apps/'
alias hostname='echo "somethings"'
