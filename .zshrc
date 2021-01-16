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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# pyenv
alias vim="nvim"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
