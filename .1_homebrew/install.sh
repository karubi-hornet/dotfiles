#!/bin/sh

# Install homebrew
if ! (type brew > /dev/null 2>&1); then
  xcode-select --install
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Permission settings
sudo chown -R "$(whoami)":admin /usr/local/*
sudo chmod -R g+w /usr/local/*

cd "$PWD"/.1_homebrew || exit
brew bundle
cd - || exit

printf "\033[0;32mHomebrew setting is done!\033[0m\n"