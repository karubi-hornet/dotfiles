#!/bin/sh

# link
basename -a "$PWD"/.4_dotfiles/.??* | xargs -I{} ln -sfv "$PWD"/.4_dotfiles/{} ~/{}

# Zinit (Zsh plugin manager)
grep .plugins.zsh ~/.zshrc > /dev/null
if [ ! $? ]; then
	sh -c "$(curl -fsSL https://git.io/zinit-install)"
	cp -f "$PWD"/.4_dotfiles/.zshrc ~/.zshrc
	printf ". %s/.4_dotfiles/.plugins.zsh\n" "$PWD" >> ~/.zshrc
fi

printf "\033[0;32mdotfiles link is done!\033[0m\n"