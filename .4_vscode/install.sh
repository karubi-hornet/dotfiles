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
  bierner.markdown-mermaid
  cweijan.dbclient-jdbc
  cweijan.vscode-database-client2
  devsense.composer-php-vscode
  devsense.intelli-php-vscode
  devsense.phptools-vscode
  devsense.profiler-php-vscode
  docker.docker
  eamodio.gitlens
  editorconfig.editorconfig
  foam.foam-vscode
  george-alisson.html-preview-vscode
  github.copilot
  github.copilot-chat
  github.github-vscode-theme
  hediet.vscode-drawio
  hrst.yamaha-rt
  jebbs.plantuml
  marp-team.marp-vscode
  mathiasfrohlich.kotlin
  mechatroner.rainbow-csv
  mhutchie.git-graph
  monokai.theme-monokai-pro-vscode
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
  ms-vscode.cmake-tools
  ms-vscode.cpptools
  ms-vscode.cpptools-extension-pack
  ms-vscode.cpptools-themes
  ms-vscode.powershell
  ms-vscode.remote-explorer
  ms-vscode.remote-repositories
  shd101wyy.markdown-preview-enhanced
  redhat.java
  takumii.markdowntable
  tomoki1207.pdf
  twxs.cmake
  vector-of-bool.gitflow
  visualstudioexptteam.intellicode-api-usage-examples
  visualstudioexptteam.vscodeintellicode
  vscjava.vscode-gradle
  vscjava.vscode-java-debug
  vscjava.vscode-java-dependency
  vscjava.vscode-java-pack
  vscjava.vscode-java-test
  vscjava.vscode-maven
  vue.volar
  william-voyek.vscode-nginx
  zainchen.json
)

for i in "${pkglist[@]}"; do
  code --install-extension "$i"
done

echo "VSCode setting is done!"
