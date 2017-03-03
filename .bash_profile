# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
            . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

PS1='\e[36;1m\u@\h: \e[31m\w\e[0m\$'

export PS1

# alias stuff

alias .. = 'cd ..'
alias lsa = 'ls -latr'
alias commit='git commit -m'
alias status='git status'
alias push='git push'
alias log='git log'
