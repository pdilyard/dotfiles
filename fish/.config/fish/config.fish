# System abbreviations

abbr cl 'clear'
abbr l 'ls -al'
abbr lock '/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

set -U vim nvim
set -U SHELL /usr/local/bin/fish

alias xcopy='xclip -selection clipboard'
alias xpaste='xclip -o -selection clipboard'

# Git abbreviations

alias git='hub'
abbr ga 'git add'
abbr gaa 'git add -A'
abbr gb 'git branch'
abbr gbr 'git browse'
abbr gc 'git commit'
abbr gca 'git add -A; git commit'
abbr gcam 'git add -A; git commit -m'
abbr gcm 'git commit -m'
abbr gco 'git checkout'
abbr gd 'git diff'
abbr glo "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr gp 'git push'
abbr gpl 'git pull --rebase'
abbr gs 'git status'

# Elixir abbreviations

abbr mt 'mix test'
abbr phx 'iex -S mix phx.server'

# Google Compute abbreviations

abbr gssh 'gcloud compute ssh'
abbr k 'kubectl'
abbr p 'pachctl'
abbr sproj 'gcloud config set project'
abbr proj 'gcloud config get-value project'
abbr build 'gcloud container builds submit'

# Remesh aliases
source ~/github.com/remesh/remesh/toolkit/aliases.fish

# pyenv

set -x PATH "/home/pdilyard/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pdilyard/google-cloud-sdk/path.fish.inc' ]; . '/home/pdilyard/google-cloud-sdk/path.fish.inc'; end
