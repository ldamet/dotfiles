#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

#Sets colors and PS1
source ~/.xterm_colors
eval $(dircolors -b ~/.dir_colors)

alias em='emacs -nw'
alias ls='ls --color -F'
alias ll='ls -l'
alias mv='mv -v'
alias cp='cp -v'
alias off='shutdown -h now'

alias d2="wine .wine/drive_c/Diablo\ II/Game.exe"

export HISTCONTROL=ignoredups
export ACE_ROOT=/opt/ACE_wrappers
export TAO_ROOT=${ACE_ROOT}/TAO

export LD_LIBRARY_PATH=i$TAO_ROOT/orbsvcs/orbsvcs:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$ACE_ROOT/lib:$LD_LIBRARY_PATH

export PATH=$TAO_ROOT/orbsvcs/orbsvcs:$PATH
export PATH=$ACE_ROOT/lib:$PATH
export PATH=$ACE_ROOT/bin:$PATH

#set -o vi
