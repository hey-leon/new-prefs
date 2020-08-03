zstyle :compinstall filename $HOME/.zshrc

autoload -Uz promptinit && promptinit
autoload -Uz compinit   && compinit

HISTFILE=$HOME/.histfile
HISTSIZE=10000
SAVEHIST=1000

bindkey -e

prompt adam1
