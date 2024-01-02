# Path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# Theme to load.
ZSH_THEME="ys"

# Custom folder path
ZSH_CUSTOM=$HOME/.zsh-custom

# Set data file
export _Z_DATA=$HOME/.z

# Set pyenv directory
export PYENV_ROOT=$HOME/.pyenv

# Set nvm directory
export NVM_DIR="$HOME/.nvm"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-21.jdk/Contents/Home

# Check file exists or create it
[ -f $_Z_DATA ] || touch $_Z_DATA

# Plugins to load
plugins=(git node npm nvm gnu-utils z)

# User configuration
source $ZSH/oh-my-zsh.sh

# Add zsh highlighting
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set Editor
export EDITOR='nvim'

# 10ms for key sequences
KEYTIMEOUT=1

# Set maximum number of open file descriptors
ulimit -n 2048

# Expand aliases
setopt aliases

# Vim bindings
bindkey -v
bindkey -v '^?' backward-delete-char
bindkey -M vicmd v edit-command-line

# Change the cursor shape for normal and insert mode
function zle-line-init zle-keymap-select {
    case $KEYMAP in
        vicmd)      print -n -- "\e[2 q";;  # block cursor
        viins|main) print -n -- "\e[6 q";;  # line cursor
    esac

    zle reset-prompt
    zle -R
}

function zle-line-finish {
    print -n -- "\e[2 q"  # block cursor
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

# Add paths
export PATH=$(getconf PATH);
export PATH="/sbin:$PATH";
export PATH=/opt/homebrew/bin:$PATH
export PATH="/usr/local/bin:$PATH";
export PATH="/usr/local/sbin:$PATH";
export PATH="$PYENV_ROOT/bin:$PATH";
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc";

# Init pyenv
eval "$(pyenv init -)"

# Configure nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

