# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt appendhistory beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kelly/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt autocd

setopt correct

setopt HIST_IGNORE_ALL_DUPS

alias a=ls
alias ...=../..
alias b='cd -'

. ~/.promptline.sh
