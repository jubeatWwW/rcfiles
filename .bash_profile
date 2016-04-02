# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

unset SSH_ASKPASS

export PATH
export PS1="\e[0;32m[\@]\e[0;36m[\u@\h \w]\e[m\n ༼ つO_O ༽つ "
