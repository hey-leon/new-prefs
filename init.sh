#!/bin/bash

brew_url=https://raw.githubusercontent.com/Homebrew/install/master/install.sh

# check run directory
pushd ~/.setup &> /dev/null

  # configure hostname
  read -p "enter a hostname (default: macbook) " hostname
  sudo scutil --set HostName ${hostname:-macbook}

  # install homebrew
  if ! command -v brew
  then
    echo "installing homebrew"
    /bin/bash -c "$(curl -fsSL ${brew_url})"
  fi

  # install apps and dev tools
  while true; do
    read -p "install apps and dev tools [Y/n] " yn
    case $yn in
        [Yy]* ) brew bundle; break;;
        [Nn]* ) break;;
        * ) echo "yes or no...";;
    esac
  done

  # install macos defaults
  while true; do
    read -p "install macos defaults [Y/n] " yn
    case $yn in
        [Yy]* ) ./macos.sh; break;;
        [Nn]* ) break;;
        * ) echo "yes or no...";;
    esac
  done

  # symlink dotfiles
  while true; do
    read -p "symlink dotfiles [Y/n] " yn
    case $yn in
        [Yy]* ) stow dotfiles -R; break;;
        [Nn]* ) break;;
        * ) echo "yes or no...";;
    esac
  done

  # set shell to bash
  chsh -s /bin/bash

popd &> /dev/null

echo
echo "All complete 🎉🎉🎉"
echo
