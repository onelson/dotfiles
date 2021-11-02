export NODEJS_HOME=/opt/nodejs
export PATH=$HOME/.cargo/bin:node_modules/.bin:~/node_modules/.bin:~/.local/bin:$NODEJS_HOME/bin:$JAVA_HOME/bin:$PATH
export TERM=xterm-256color
export EDITOR=vim
export VISUAL=$EDITOR


alias dcomp=docker-compose
alias k=kubectl

eval "$(starship init bash)"
