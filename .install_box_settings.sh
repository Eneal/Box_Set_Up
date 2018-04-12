echo "Let's get installin' up in this bitch!"

# copy .zshrc and .vimrc into ~
#cp .zshrc ~ .zshrc
cp .vimrc ~ .vimrc
#echo "moved .zshrc and .vimrc into ~"

# move up a directory
cd ~
echo "changed to home directory"

# install xcode
xcode-select --install
echo "xcode successfully installed"

# install brew & cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
echo "brew and cask installed"

# install git
brew install git
echo "git installed"

# install iterm2
brew cask install iterm2
echo "iterm2 installed"

# install Pycharm community edition
brew cask install pycharm-ce
echo "pycharm ce installed"

# install oh-my-zshell
brew install zsh zsh-completions
curl -L http://install.ohmyz.sh | sh

# font goodness
git clone git://github.com/altercation/solarized.git
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

# vim stuff
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Vundle vim plugin manager cloned"

# pyenv setup
brew install pyenv
echo "pyenv installed"
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
echo "pyenv init added to .zshrc"


# python 2
#brew install python
#python $HERE/get_pip.py
#pip install --upgrade setuptools
#pip install -upgrade pip
#echo "python 2 and pip installed"

# python 3
#brew install python3
#echo "python 3 installed"

# virtualenv and virtualenvwrapper
pip install virtualenv
pip install --ignore-installed virtualenvwrapper

#mkvirtualenv p2_default
#deactivate
#mkvirtualenv --python="/usr/local/bin/python3" p3_default
#deactivate

# Nice Quick Look extensions
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

# turn it all on
source ~/.zshrc


# pyenv install of python versions
pyenv install 2.7.14
echo "python 2.7.14 installed via pyenv"
pyenv install 3.6.5
echo "python 3.6.6 installed via pyenv"

echo "Don't forget to set your iTerm2 fonts to 14pt Meslo for Powerline. Preferences>Profiles>Text"
