#!/usr/bin/env zsh

# History completion
zinit ice wait'!0'; zinit light zsh-users/zsh-autosuggestions
# Syntax highlighting
zinit ice wait'!0'; zinit light zdharma-continuum/fast-syntax-highlighting
# Ctrl-R to search command history
zinit ice wait'!0'; zinit light zdharma-continuum/history-search-multi-word
# Open on GitHub ($git open)
zinit ice wait'!0'; zinit light paulirish/git-open
# Completion (for many commands)
zinit ice wait'!0'; zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit

# Make completion match lowercase to uppercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# When displaying a list of completion candidates, you can select them with Tab or arrows.
zstyle ':completion:*:default' menu select=1

zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure
