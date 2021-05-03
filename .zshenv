PROMPT='[%B%F{magenta}%n%F{magenta}@%F{magenta}%m%f%b %B%F{cyan}%~%f%b]$ '

## Sources
# source "$HOME/.cargo/env"

## Exports
export EDITOR=nvim
export BROWSER=firefox

## Aliases
alias ll='ls -AFhl --color --group-directories-first'
alias config='/run/current-system/sw/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

## BindKeys
bindkey '^R' history-incremental-search-backward
