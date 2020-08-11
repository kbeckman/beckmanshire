# Dependencies...
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Custom $PATH setup...
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"
export PATH="$HOME/.git-scripts:$PATH"
export PATH="$HOME/.shell-scripts:$PATH"

# Set editors...
export EDITOR=vim
export BUNDLER_EDITOR=vim

# Docker environment...
env_docker=~/.env-docker
[[ -e $env_docker ]] && source $env_docker

# Source Contract environment...
contract_env=~/.contract-env
[[ -e $contract_env ]] && source $contract_env

