export WORKON_HOME=$HOME/Envs
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
export PATH=~/bin:~/apps/spark-1.6.1/bin:node_modules/.bin:~/node_modules/.bin:~/apps/p4v/bin:$JAVA_HOME/bin:$PATH
export EDITOR="emacs -nw"
export TERM=xterm-256color
export LD_LIBRARY_PATH=$(rustc --print sysroot)/lib:$LD_LIBRARY_PATH
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
