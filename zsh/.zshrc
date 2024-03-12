# Path to your oh-my-zsh installation.
export ZSH="/Users/bryan/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bryan/Development/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bryan/Development/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bryan/Development/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bryan/Development/google-cloud-sdk/completion.zsh.inc'; fi
