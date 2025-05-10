#!/usr/bin/env zsh

# add to .zshrc
if ! grep -q 'PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' ~/.zshrc; then
    echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> ~/.zshrc
fi

# Install Node.js by using asdf
if ! (type node > /dev/null 2>&1); then
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  asdf install nodejs latest
  asdf set -u nodejs latest
fi

echo "\033[0;32masdf setting is done!\033[0m"