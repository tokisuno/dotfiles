export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
. "$HOME/.cargo/env"

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"
export PATH="$PATH:/opt/homebrew/bin"

eval "$(/opt/homebrew/bin/brew shellenv zsh)"
