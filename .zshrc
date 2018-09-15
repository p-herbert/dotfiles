# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Theme to load.
ZSH_THEME="ys"

# Custom folder path
ZSH_CUSTOM=$HOME/.zsh_custom

# Plugins to load
plugins=(git node npm nvm gnu-utils)

# User configuration
source $ZSH/oh-my-zsh.sh

# Set Editor
export EDITOR='nvim'

# 10ms for key sequences
KEYTIMEOUT=1

ulimit -n 2048

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

# Add zsh highlighting
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add paths
export PATH="/usr/local/bin:$PATH";
export PATH="$PATH:/usr/local/sbin";
export PATH="$PATH:$HOME/.npm/bin";
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc";

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U +X bashcompinit && bashcompinit

