#!/usr/bin/env zsh

# Install VS Code
if ! (type code > /dev/null 2>&1); then
  if ! (type brew > /dev/null 2>&1); then
    sh homebrew/install.sh
  fi
  brew install --cask visual-studio-code
fi

# settings.json
ln -sfv "$PWD"/5_vscode/settings.json ~/Library/Application\ Support/Code/User/

# list of plugins
pkglist=(
  eamodio.gitlens
  editorconfig.editorconfig
  github.copilot
  github.copilot-chat
  hediet.vscode-drawio
  mechatroner.rainbow-csv
  ms-azuretools.vscode-docker
  ms-ceintl.vscode-language-pack-ja
  ms-python.debugpy
  ms-python.isort
  ms-python.python
  ms-python.vscode-pylance
  ms-toolsai.jupyter
  ms-toolsai.jupyter-keymap
  ms-toolsai.jupyter-renderers
  ms-toolsai.vscode-jupyter-cell-tags
  ms-toolsai.vscode-jupyter-slideshow
  ms-vscode-remote.remote-containers
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  ms-vscode.remote-explorer
  ms-vscode.remote-repositories
  shd101wyy.markdown-preview-enhanced
)

for i in "${pkglist[@]}"; do
  code --install-extension "$i"
done

echo "VSCode setting is done!"
