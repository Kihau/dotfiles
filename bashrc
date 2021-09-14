#   
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Ignore spaces or duplicate lines
HISTCONTROL=ignoreboth

HISTSIZE=1000
HISTFILESIZE=2000

# Append to the history, don't overwrite it
shopt -s histappend

# Check the window size after each command and
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# Enable color support 
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Alias definitions stored in a separte file
if [ -f $HOME/.bash_aliases ]; then
	. $HOME/.bash_aliases
fi
