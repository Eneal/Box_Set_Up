"""
Script for initializing the mac environment

This is assembled from multiple guides including:

 - http://sourabhbajaj.com/mac-setup/
 - http://railsapps.github.io/xcode-command-line-tools.html
 - http://docs.python-guide.org/en/latest/starting/install/osx/
 - http://superuser.com/questions/623831/how-to-get-git-flow-completions-for-zsh-working
 - http://caskroom.io/
 - http://coding2learn.org/blog/2014/03/11/installing-pygame-on-mac-os-x-with-python-3/
"""
__author__ = 'adillon'

from os import path
import os
from subprocess import call

here = path.abspath(path.dirname(__file__))

os.environ["HERE"] = str(here)

call("source %s" % path.join(here, "init_env.sh"), shell=True)