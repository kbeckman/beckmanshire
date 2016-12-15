#!/bin/bash

echo "Installing Homebrew, a good OSX package manager..." 
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew tap homebrew/dupes

echo "Installing GNU Compiler Collection, a necessary prerequisite to installing Ruby..."
  brew install apple-gcc42

echo "Getting the latest version of OpenSSL..."
  brew install openssl
  brew link --force openssl

echo "Installing Git, Vim, TMUX and other system necessities..."
  brew install git
  brew install vim
  brew install ctags
  brew install tmux
  brew install zsh
  brew install tree
  brew install terminal-notifier
  brew install p7zip
 
echo "Installing RVM (Ruby Version Manager) and the latest version of Ruby, which becomes the default..."
  curl -sSL https://get.rvm.io | bash -s stable --ruby
  source ~/.rvm/scripts/rvm
  rvm requirements

echo "Installing critical Ruby gems for Rails development..."
  gem update --system
  gem install bundler

echo "Changing shell to ZSH..."
  chsh -s `which zsh`
  curl -L http://install.ohmyz.sh | sh
 
echo "Checking for SSH key, generating one if it doesn't exist..."
  [[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa -b 4096 -C "kbeckman.c4sc@gmail.com"
echo "Copying public key to clipboard. Paste it into your Github account..."
  [[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub
echo "Open github.com and add new SSH key..."
echo "Press 'Enter' to continue..."
  read TMPREAD

echo "Installing homesick gem for dotfiles management..."
  gem install homesick
  homesick clone git@github.com:kbeckman/beckmanshire.git
  homesick symlink beckmanshire
  ln -sfv ~/.homesick/repos/beckmanshire/home/.gitconfig-mac .gitconfig
  ln -sfv ~/.homesick/repos/beckmanshire/images ~/Pictures/beckmanshire-images
  cd ~/.homesick/repos/beckmanshire
  git submodule init
  git submodule update

echo "Your machine will now restart to apply changes..."
echo "Press 'Enter' to continue..."
  read TMPREAD
  sudo shutdown -r now
