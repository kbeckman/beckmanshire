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
[[ -e $env_docker ]] && source $env_docker

# Source Contract environment...
contract_env=~/.contract-env
[[ -e $contract_env ]] && source $contract_env

