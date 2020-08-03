for zsh_config in $HOME/.config/zsh/*; do
  source $zsh_config
done

autoload -Uz compinit   && compinit
autoload -Uz promptinit && promptinit

zstyle :compinstall filename "$HOME/.zshrc"

bindkey -e

export EDITOR=nvim
export HISTFILE=~/.histfile
export HISTSIZE=10000
export SAVEHIST=1000
export LS_COLORS=exfxcxdxbxegedabagacad
export CLICOLOR=1

compinit
prompt adam1
