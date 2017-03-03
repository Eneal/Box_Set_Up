# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# ???
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# use python 3 by default?
export PYTHONPATH=/usr/local/lib/python3.4:$PYTHONPATH

#open zsh
/usr/local/bin/zsh