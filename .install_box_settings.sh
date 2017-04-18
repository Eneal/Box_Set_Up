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

# python 2
brew install python
python $HERE/get_pip.py
pip install --upgrade setuptools
pip install -upgrade pip
echo "python 2 and pip installed"

# python 3
brew install python3
echo "python 3 installed"

# virtualenv and virtualenvwrapper
pip install virtualenv
pip install virtualenvwrapper

mkvirtualenv p2_default
deactivate
mkvirtualenv --python="/usr/local/bin/python3" p3_default
deactivate

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

echo "Don't forget to set your iTerm2 fonts to 14pt Meslo for Powerline. Preferences>Profies>Text"