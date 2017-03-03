#!/bin/zsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
 
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias commit='git commit -m'
alias status='git status'
alias push='git push'
alias log='git log'
alias linux='ssh q2dc\\eneal@10.116.1.20'
alias eastwood_env='source env/bin/activate'
alias lsa='ls -latr'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man colorize jira brew osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-completions/git-flow-completion.zsh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

export PATH=~/opt/arcanist/bin:$PATH

export PATH=~/envs/p2_default/chromedriver.exe:$PATH

export EDITOR='vim'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export TERM=xterm-256color

# default virtual environment
export WORKON_HOME=~/envs
export PIP_REQUIRE_VIRTUALENV=true

gpip(){
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

source /usr/local/bin/virtualenvwrapper.sh
workon p2_default

# add zsh-completions
#fpath=(/usr/local/share/zsh-completions) $fpath

# nose test alias
function run_tests() {
  if [[ -n "$1" ]]; then
    tested_package=$1
  else
    tested_package=`pwd | rev | cut -f1 -d/ | rev`
  fi
  nosetests -v --with-coverage $tested_package --cover-package=$tested_package
}

alias nose=run_tests

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh


# Keypad
# 0 . Enter
bindkey -s "^[Op" "0"  
bindkey -s "^[Ol" "."  
bindkey -s "^[OM" "^M"  
# 1 2 3
bindkey -s "^[Oq" "1"  
bindkey -s "^[Or" "2"  
bindkey -s "^[Os" "3"  
# 4 5 6
bindkey -s "^[Ot" "4"  
bindkey -s "^[Ou" "5"  
bindkey -s "^[Ov" "6"  
# 7 8 9
bindkey -s "^[Ow" "7"  
bindkey -s "^[Ox" "8"  
bindkey -s "^[Oy" "9"  
# + -  * /
bindkey -s "^[Ok" "+"  
bindkey -s "^[Om" "-"  
bindkey -s "^[Oj" "*"  
bindkey -s "^[Oo" "/"  
