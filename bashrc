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

black='\[\033[01;30m\]'  # Black
red='\[\033[01;31m\]'    # Red
green='\[\033[01;32m\]'  # Green
yelow='\[\033[01;33m\]'  # Yellow
blue='\[\033[01;34m\]'   # Blue
purple='\[\033[01;35m\]' # Purple
cyan='\[\033[01;36m\]'   # Cyan
white='\[\033[01;37m\]'  # White
reset='\[\033[00m\]'     # Reset

PS1='\n\[\033[1;91m\]\u\[\033[1;33m\]@\[\033[1;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n> '

# Alias definitions stored in a separte file
if [ -f $HOME/.bash_aliases ]; then
	. $HOME/.bash_aliases
fi
