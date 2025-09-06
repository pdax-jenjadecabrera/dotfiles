# --- Oh My Zsh ---
# This section handles the installation and configuration of Oh My Zsh

# Check if the Oh My Zsh directory already exists.
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    # If it doesn't exist, print a message and run the installation script.
    # The `unattended` flag prevents the installer from prompting the user.
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Set the path to the Oh My Zsh installation directory.
export ZSH="$HOME/.oh-my-zsh"

# Set the theme for the Zsh shell.
# `robbyrussell` is a simple and clean default theme.
ZSH_THEME="robbyrussell"

# Specify the plugins to be loaded.
# `git` provides a number of useful aliases and functions for Git.
plugins=(git)

# Source the main Oh My Zsh script to load the framework and plugins.
source $ZSH/oh-my-zsh.sh

# --- Paths ---
# This section adds various directories to system's PATH.

# Add Homebrew's binary directories to the beginning of the PATH.
# This ensures that Homebrew-installed programs are found first.
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# Add the OpenJDK bin directory from Homebrew to the PATH.
export PATH="$PATH:/opt/homebrew/opt/openjdk/bin"

# --- Android SDK ---
# This section configures the environment for the Android SDK.

# Set the `ANDROID_HOME` environment variable to the SDK's location.
export ANDROID_HOME="$HOME/Library/Android/sdk"

# Add the Android SDK's binary directories to the PATH.
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# --- Terminal ---
# This section sets the terminal type.

# Set the terminal type to `xterm-256color` to enable support for 256 colors.
export TERM="xterm-256color"

# --- FZF (Fuzzy Finder) ---
# This section loads the configuration for FZF.

# Load the `fzf` shell integration for Zsh.
# This provides fuzzy-finding capabilities for commands, history, and files.
source <(fzf --zsh)
