export CLICOLOR=1
export PS1="\[\e[00;36m\]\u@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;36m\]:\[\e[0m\]\[\e[00;33;1m\]\W\[\e[0m\]\[\e[00;36m\]\\$\[\e[0m\]"
alias sshb='ssh -Y -q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
bind "set completion-ignore-case on"
HISTSIZE=100000
HISTFILESIZE=100000
alias ls='ls -G'
alias rl='rlogin'
alias ll='ls -alh'
#git completion
test -f ~/.git-completion.bash && . $_

# this is for brew
PATH=/usr/local/bin:/usr/local/sbin:$PATH

# this is for GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOROOT/bin

# turn off 'cd ' jump to homedir
cd () { [ $# -gt 0 ] && command cd "$@"; }

# turn off proxy
alias noproxy='unset http_proxy; unset https_proxy; unset all_proxy'

#Compiler options
export CFLAGS="-Wall -g"

################################### CORP PROXY ###################################
PROXY_SERVER=ladczproxy..com
PROXY_PORT=80
PROXY_USERNAME=bryce-e
PROXY_PASSWORD=`cat ~/Documents/proxypw | tr 'A-Za-z' 'N-ZA-Mn-za-m'`
PROXY=$PROXY_USERNAME:$PROXY_PASSWORD@$PROXY_SERVER:$PROXY_PORT
# HTTP and HTTPS
export http_proxy=http://$PROXY
export https_proxy=http://$PROXY
# RSYNC
export rsync_proxy=$PROXY
# stupid all_proxy var
export all_proxy=$PROXY
##################################################################################
