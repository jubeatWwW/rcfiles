# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

unset SSH_ASKPASS

export PATH
export PS1="[\@][\u@\h \w]\n ༼ つ0_0 ༽つ "
