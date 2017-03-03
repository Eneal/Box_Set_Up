# #!/bin/sh
# # xcode
# xcode-select --install

# # install brew & cask
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew install caskroom/cask/brew-cask

# # git & git-flow
# brew install git
# brew install git-flow

# # iterm2
# brew cask install iterm2

# # install oh-my-zshell
# brew install zsh zsh-completions
# curl -L http://install.ohmyz.sh | sh

COMPS="/usr/local/share/zsh-completions"
echo cp from $HERE/_git
cp $HERE/_git $COMPS/_git
cp $HERE/git*.zsh $COMPS/git-flow-completions.zsh
echo home is $HOME
cp $HERE/bash_profile.sh $HOME/.bash_profile
cp $HERE/zshrc.sh $HOME/.zshrc

# # python 2
# brew install python
# python $HERE/get_pip.py

# pip install --upgrade setuptools
# pip install --upgrade pip

# # python 3
# brew install python3

# # virtualenv and virtualenvwrapper
# pip install virtualenv
# pip install virtualenvwrapper

# mkdir $HOME/envs
# export WORKON_HOME=$HOME/envs
# source /usr/local/bin/virtualenvwrapper.sh

# # default installs
# brew install zeromq
# brew install pyqt
# brew install sdl sdl_image sdl_mixer sdl_ttf portmidi
# brew cask install xquartz
# brew install smpeg
# brew install mercurial
# echo "pip install pyzmq" >> $WORKON_HOME/postmkvirtualenv
# echo "pip install pygments" >> $WORKON_HOME/postmkvirtualenv
# echo "pip install jinja2" >> $WORKON_HOME/postmkvirtualenv
# echo "pip install tornado" >> $WORKON_HOME/postmkvirtualenv
# echo "pip install ipython[all]" >> $WORKON_HOME/postmkvirtualenv
# echo "pip install jupyter" >> $WORKON_HOME/postmkvirtualenv
# echo "pip install pyyaml" >> $WORKON_HOME/postmkvirtualenv
# echo "pip install nose" >> $WORKON_HOME/postmkvirtualenv
# echo "pip install sphinx" >> $WORKON_HOME/postmkvirtualenv

# # default envs
# mkvirtualenv --python=`which python3` p3_default
# mkvirtualenv --python=`which python3` game
# mkvirtualenv p2_default

# workon game
# pip install hg+http://bitbucket.org/pygame/pygame
# deactivate

# # sublime text
# brew cask install sublime-text

# # pycharm ce
# brew cask install pycharm-ce

# # Nice Quick Look extensions
# brew cask install qlcolorcode
# brew cask install qlstephen
# brew cask install qlmarkdown
# brew cask install quicklook-json
# brew cask install qlprettypatch
# brew cask install quicklook-csv
# brew cask install betterzipql
# brew cask install webpquicklook
# brew cask install suspicious-package

# # mac cheat sheet
# brew cask install cheatsheet

# # clean-up
# brew update && brew upgrade brew-cask && brew cleanup

# source $HOME/.zshrc
