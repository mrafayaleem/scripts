#!/bin/bash

#  -----------------------------------------------------------------------------  #
#  Script to configure my Macbook for development and stuff. Update the urls in   #
#  CONSTANTS to point to latest releases. Also make sure to run this script       #
#  under sudo privilege. The ideal place to run this script would be from OS X    #
#  "Downloads" directory.                                                         #
#                                                                                 #
#  AUTHOR: M Rafay Aleem                                                          #
#  -----------------------------------------------------------------------------  #


#  Constants
#  TODO: Change this to an array and use a for loop!
CHROME=https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
VLC=http://get.videolan.org/vlc/2.1.5/macosx/vlc-2.1.5.dmg
ITERM=https://iterm2.com/downloads/stable/iTerm2_v2_0.zip
PYCHARM=http://download-cf.jetbrains.com/python/pycharm-community-4.0.3.dmg 
VIRTUALBOX=http://download.virtualbox.org/virtualbox/4.3.20/VirtualBox-4.3.20-96996-OSX.dmg
SUBLIMETEXT=http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg
CONSOLAS=http://www.ugcs.caltech.edu/~dangelo/consola.ttf
KEEPASS=http://www.keepassx.org/releases/KeePassX-0.4.3.dmg
ONEPASS=https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-5.0.2.zip
DROPBOX=https://dl.dropboxusercontent.com/u/17/Dropbox%203.0.4.dmg

#  Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#  Install git and bash completion
#  https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
brew install git bash-completion

#  Install wget
brew install wget

#  Download packages to be installed manually
wget $CHROME
wget $VLC
wget $ITERM
wget $PYCHARM
wget $VIRTUALBOX
wget $SUBLIMETEXT
wget $CONSOLAS
wget $KEEPASS
wget $ONEPASS
wget $DROPBOX

#  Install pip
easy_install pip

#  Install iPython
pip install ipython

# Install virtualenv
pip install virtualenv
