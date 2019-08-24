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
#

bindkey '^B' push-line

PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib64/pkgconfig
export PKG_CONFIG_PATH
EDITOR=/usr/bin/vim
export EDITOR

setopt autocd

setopt correct

setopt HIST_IGNORE_ALL_DUPS

alias a=ls
alias ...=../..
alias b='cd -'
hg() {
	if [[ $1 == "checkout" ]]; then
		if [[ $2 == "-b" ]]; then
			command hg bookmark "$3"
			command hg update "$3"
		else
			command hg update "$2"
		fi
	elif [[ $1 == "push"] ]]; then
		command hg push -b "$2"
	else
		command hg "$@"
	fi
}

. ~/.promptline.sh
