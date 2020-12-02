# SPDX-License-Identifier: ISC
# Copyright (c) 2018-2020 Dawid Potocki

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/plumeus/.zshrc'

autoload -Uz compinit

fpath+=~/.zfunc # For rustup completions

compinit

_comp_options+=(globdots)  # Include hidden files
zstyle ':completion:*' rehash true  # Look for new completions
