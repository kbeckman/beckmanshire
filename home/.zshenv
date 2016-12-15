# Golang...
export GOPATH=$HOME/Source-Code/go
export PATH="$PATH:$GOPATH/bin"

# Custom $PATH setup...
export PATH="$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"
export PATH="$HOME/.git-scripts:$PATH"
export PATH="$HOME/.shell-scripts:$PATH"

# RVM setup...
[[ -s '$HOME/.rvm/scripts/rvm' ]] && source '$HOME/.rvm/scripts/rvm'

# Set editors...
export EDITOR=vim
export BUNDLER_EDITOR=vim

# Docker environment...
env_docker=~/.env-docker
if [ -e $env_docker ]; then source $env_docker; fi

# Source Contract environment...
contract_env=~/.contract-env
if [ -e $contract_env ]; then source $contract_env; fi

