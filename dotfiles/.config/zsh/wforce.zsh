
export PATH="$PATH:/usr/local/opt/postgresql@9.6/bin"
export PATH="$PATH:/usr/local/sbin"

# must be added last
export PATH="$PATH:$HOME/.rvm/bin"

# setup rvm
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
	source "$HOME/.rvm/scripts/rvm"
fi

# setup nvm
export NVM_DIR="$HOME/.nvm"

if [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ]; then
  source "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
fi
if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
  source "/usr/local/opt/nvm/nvm.sh"
fi
