#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
if [[ $TERMINIX_ID ]]; then
	source /etc/profile.d/vte.sh
fi

# Alias
alias ssr='ssh -l root'
alias ls='ls --color=auto'
