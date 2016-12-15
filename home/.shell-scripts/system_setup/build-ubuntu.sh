#!/bin/bash

echo "Updating system..."
  sudo apt-get update -yqq
  sudo apt-get dist-upgrade -yqq

echo "Installing Git, Vim, TMUX and other system necessities..."
  sudo apt-get install -yqq git-core git 
  sudo apt-get install -yqq tree xclip 
  sudo apt-get install -yqq zsh vim tmux

echo "Installing base ruby build dependencies..."
  #sudo apt-get build-dep -yqq ruby1.9.3

echo "Installing libraries for common gem dependencies..."
  sudo apt-get install -yqq libxslt1-dev libcurl4-openssl-dev libksba8 libksba-dev libqtwebkit-dev

echo "Installing Database and Application servers..."

echo "Installing PostgreSQL..."
  sudo apt-get install -yqq postgresql postgresql-contrib postgresql-client
  
  
  sudo apt-get install -yqq mongodb mongodb-server mongodb-clients
  sudo apt-get install -yqq redis-server
  sudo apt-get install -yqq sqlite

  sudo apt-get install -yqq nodejs npm
  sudo npm install -g grunt
  sudo npm install -g grunt-cli

  sudo apt-get install -yqq rabbitmq-server
  sudo rabbitmq-plugins enable rabbitmq_management

echo "Installing Ruby development dependencies..."
  sudo apt-get install -yqq imagemagick 
  sudo apt-get install -yqq phantomjs 

echo "Installing RVM (Ruby Version Manager) and the latest version of Ruby, which becomes the default..."
  curl -L https://get.rvm.io | bash -s stable --ruby
  source ~/.rvm/scripts/rvm
  rvm requirements

echo "Installing critical Ruby gems for Rails development..."
  gem install bundler pg

echo "Changing shell to zsh..."
  sudo chsh -s `which zsh`
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
  
echo "Checking for SSH key, generating one if it doesn't exist..."
  [[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa -b 4096 -C "kbeckman.c4sc@gmail.com"
echo "Copying public key to clipboard. Paste it into your Github account..."
  cat ~/.ssh/id_rsa.pub
echo "Open github.com and add new SSH key..."
echo "Press 'Enter' to continue..."
  read TMPREAD

echo "Installing homesick gem for dotfiles management..."
  gem install homesick
  homesick clone git@github.com:kbeckman/beckmanshire.git
  homesick symlink beckmanshire
  ln -sfv .homesick/repos/beckmanshire/home/.gitconfig-linux .gitconfig
  ln -sfv .homesick/repos/beckmanshire/images ~/Pictures/beckmanshire-images
  cd ~/.homesick/repos/beckmanshire
  git submodule init
  git submodule update

echo "Your machine will now restart to apply changes..."
  sudo shutdown -r 0
