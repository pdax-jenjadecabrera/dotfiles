# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Paths
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# Android studio
export PATH="$PATH:/opt/homebrew/opt/openjdk/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# Fzf integration
source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--height=100%"
export FZF_CTRL_T_COMMAND="fd --type f --hidden --no-ignore --exclude '.git'"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {}'"
export FZF_ALT_C_COMMAND="fd --hidden --type d"

# Bat integration
alias cat='bat'
