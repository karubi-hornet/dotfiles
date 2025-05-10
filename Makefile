# Do everything.
all: init homebrew macos dotfiles vscode asdf

# Set initial preference.
init:
	.0_init/install.sh

# Install macOS applications.
homebrew:
	.1_homebrew/install.sh

# Set macOS system preferences.
macos:
	.2_macos/install.sh

# Link dotfiles.
dotfiles:
	.3_dotfiles/install.sh

# VSCode Settings.
vscode:
	.4_vscode/install.sh

# asdf Settings.
asdf:
	.5_asdf/install.sh