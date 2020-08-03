zstyle :compinstall filename $HOME/.zshrc

autoload -Uz promptinit && promptinit
autoload -Uz compinit   && compinit

EDITOR=nvim
HISTFILE=$HOME/.histfile
HISTSIZE=10000
SAVEHIST=1000

bindkey -e

prompt adam1

for file in $HOME/.config/zsh/*.zsh; do
  source $file
done
