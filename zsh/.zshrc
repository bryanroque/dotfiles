# Path to your oh-my-zsh installation.
export ZSH="/Users/bryroque/.oh-my-zsh"
export PATH=$HOME/.toolbox/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
# for generating brazil language server
export PATH=$PATH:~/workplace/ninja-utils/src/NinjaUtilsClojure/bin
export KEYTIMEOUT=1

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--layout reverse --color=light --color "preview-bg:#f0f0f0"'
export FZF_CTRL_T_COMMAND=$'fd --hidden --follow'
export FZF_CTRL_T_OPTS='--preview "bat --style=numbers --color=always {} | head -500"'
export FZF_TMUX_OPTS='-p 70%'

alias vim="nvim"
alias gcc="gcc-9"
alias g++="g++-9"
alias python="python3"

ZSH_THEME=""

plugins=(
    git
    vi-mode
    fzf
)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure