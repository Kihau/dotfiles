#
# ~/.bash_aliases
#

# Some navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Aliases for neovim
alias vi='nvim'
alias vim='nvim'

# Enable color support 
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#alias cat='pygmentize -g -O style=colorful,lineos=1'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER="less -R --use-color -Dd+r -Du+b"

# Verbose file operations
alias rm='rm -iv'
alias cp='cp -iv'
alias mkdir='mkdir -pv'
alias rmdir='rmdir -v'
alias mv='mv -v'

# Alias function for opening file explorer
#alias files="$(testing ${1})"
files() {
    if [ -z $1 ]; then
        xdg-open .
    else
        xdg-open $1
    fi
}

alias open='xdg-open'
alias off='poweroff'
alias aur='paru'

# Enable aliases in sudo
alias sudo='sudo '

# Pacman aliases
alias intall='sudo pacman -S'
alias update='sudo pacman -Sy'
alias upgrade='sudo pacman -Su'
alias remove='sudo pacman -R'
alias remove-nuke='sudo pacman -Rscn'


# Pause bash history for current bash session
#alias sneak='set +o history ; history -c'
#alias sneak="set +o history ; echo Entering sneaky bash. . . ; bash ; unset HISTFILE ; set -o history"
alias sneak="unset HISTFILE"
