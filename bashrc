#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set default editor to neovim
EDITOR='/usr/bin/nvim'

# Ignore spaces or duplicate lines
HISTCONTROL=ignoreboth

HISTSIZE=1000
HISTFILESIZE=10000
HISTTIMEFORMAT="%d/%m/%y %T "

# Append to the history, don't overwrite it
shopt -s histappend

# Check the window size after each command and
# update the values of LINES and COLUMNS
shopt -s checkwinsize

black='\[\033[01;30m\]'  # Black
red='\[\033[01;31m\]'    # Red
green='\[\033[01;32m\]'  # Green
yellow='\[\033[01;33m\]' # Yellow
blue='\[\033[01;34m\]'   # Blue
purple='\[\033[01;35m\]' # Purple
cyan='\[\033[01;36m\]'   # Cyan
white='\[\033[00;37m\]'  # White/Grey
grey='\[\033[00;37m\]'   # White/Grey
reset='\[\033[00m\]'     # Reset

# Some nice ascii: ╔ ┏ ┌ ╭ ╚ ┗ └ ╰ ─ >

# For \w, only print 3 last direcotries 
PROMPT_DIRTRIM=3

branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='\n \u@\h:\w\n > '
if [ "$TERM" != "linux" ]; then
    PS1="\n$white┌ $red\u$yellow@$green\h$reset: ~> $blue[\w]$purple\$(branch)\n$white└─> $reset"
    PS2="$white└─> $reset"
    #PS1="\n$white╭ $red\u$yellow@$green\h$reset:$blue\w\n$white╰─> $reset"
else 
    PS1="\n$white┌ $red\u$yellow@$green\h$reset: -> $blue[\w]$purple\$(branch)\n$white└─> $reset"
    PS2="$white└─> $reset"
    #PS1="\n$white┌ $red\u$yellow@$green\h$reset:$blue\w\n$white└─> $reset"
    #PS2="$white└─> $reset"
    #PS1="\n$red\u$yellow@$green\h$reset:$blue\w\n$reset> "
fi

# Alias definitions stored in a separte file
if [ -f $HOME/.bash_aliases ]; then
	. $HOME/.bash_aliases
fi
