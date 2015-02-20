# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

if [ $TERM == "xterm-256color" ]
then
	alias less='less -r'
	alias ls='ls -F --color=tty --show-control-chars'
fi

if [ -f ~/.custom_bashrc ]; then . ~/.custom_bashrc; fi

