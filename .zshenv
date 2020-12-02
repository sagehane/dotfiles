PROMPT='[%B%F{magenta}%n%F{magenta}@%F{magenta}%m%f%b %B%F{cyan}%~%f%b]$ '

## Sources
source "$HOME/.cargo/env"

## Exports
export PATH="$PATH:$HOME/.local/bin" # Add ~/.local/bin to PATH
export EDITOR=nvim
export BROWSER=firefox

## Aliases
alias ll='ls -AFhl --color --group-directories-first'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
