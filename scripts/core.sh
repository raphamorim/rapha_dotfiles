#!/bin/sh

echo "\n[INSTALLING] Core Workflow\n"

# Mac OS X platform
if [ "$(uname)" == "Darwin" ]; then
       echo "Installing on OS X...."
       echo "\nInstalling HomeBrew..."
       ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
       echo "\nUpdating Brew and Installing Git..."
       brew update && brew install git
       echo "\nDefining git aliases..."
       git config --global alias.co checkout
       git config --global alias.br branch
       git config --global alias.ci commit
       git config --global alias.st status
       echo "\nInstalling Python..."
       brew install python
       echo "\nInstalling Pip..."
       easy_install pip
       echo "\nInstalling Virtualenv..."
       pip install virtualenv
       echo "\nInstalling NodeJs and NPM..."
       brew install node
       echo "\nInstalling Golang..."
       brew install go
       echo "\nInstalling Jekyll..."
       gem install jekyll
       echo "\nInstalling Mosh..."
       brew install mosh
       echo "\nInstalling Tmux..."
       brew install tmux

# Linux platform
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        echo "Installing on Linux plataform...."
        apt-get update
        apt-get -y install aptitude

        aptitude -y install \
            vim-gnome make httpie \
            python-setuptools python-dev \
            tmux screen \
            sudo curl htop git

        easy_install pip
        pip install virtualenv

# Windows NT platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        echo "This is a joke, right?"

fi

echo "\nDONE - vim workflow\n"



