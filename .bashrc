export PATH=$PATH:/usr/local/bin

# signal to bash to use 256 colors
export TERM=xterm-256color

alias tmux="TERM=screen-256color-bce tmux"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
