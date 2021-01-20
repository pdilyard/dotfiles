# Path to your oh-my-zsh installation.
export ZSH="/Users/paul/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Ignore some warnings about file ownership groups
ZSH_DISABLE_COMPFIX=true

plugins=(git z)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor
export EDITOR='vim'

# Terminal
TERM="screen-256color"

# Aliases
alias gs="git status -sb"
alias gcm="git commit -m"
alias d="docker"
alias dc="docker-compose"
alias vim="nvim"

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# rbenv
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
