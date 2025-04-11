# zsh
# set -U HISTFILE "$ZDOTDIR/.zhistory"
# set -U HISTSIZE 10000
# set -U SAVEHIST 10000

set -U COLORTERM "truecolor"

set -U ALTERNATE_EDITOR ""
set -U VISUAL "/usr/bin/emacs"
set -U EDITOR "/usr/bin/nvim"

set -U DICTIONARY en_US
set -U PAGER less

set -U GTK_THEME Arc-Dark

set -U NPM_DIR "$HOME/.npm-data"
set -U NPM_PACKAGES "$HOME/.npm-packages"

# path
set -U XDG_DATA_DIRS $XDG_DATA_DIRS "/var/lib/flatpak/exports/share"
set -U XDG_DATA_DIRS $XDG_DATA_DIRS "/home/poto/.local/share/flatpak/exports/share"

set -U PATH $PATH "/bin"
set -U PATH $PATH "$HOME/bin"
set -U PATH $PATH "$GHCUP_INSTALL_BASE_PREFIX/.ghcup/bin"
set -U PATH $PATH "$HOME/.cargo/bin"
set -U PATH $PATH "$HOME/.config/emacs/bin"
set -U PATH $PATH "$HOME/.local/bin"
set -U PATH $PATH "$HOME/.local/share/applications"
set -U PATH $PATH "$HOME/.local/share/scripts"
set -U PATH $PATH "$HOME/go"
set -U PATH $PATH "$NPM_PACKAGES/bin"
# set -U PATH$PATH "/root/.local/share/gem/ruby/3.2.0/bin"
set -U PATH $PATH "$HOME/.local/share/gem/ruby/3.2.0/bin"
set -U PATH $PATH "$HOME/poto/.local/share/gem/ruby/3.3.0/bin"
set -U PATH $PATH "$HOME/poto/.local/share/gem/ruby/3.6.5/bin"
set -U PATH $PATH "$HOME/.npm-global/bin"
set -U PATH $PATH "/usr/bin/"
set -U PATH $PATH "/usr/local/bin"
set -U PATH $PATH "`go env GOPATH`/bin"
# export PATH=${PATH}:"$HOME/.rvm/bin"

# keyboard
set -U GLFW_IM_MODULE "ibus"
set -U XMODIFIERS "@im=ibus"
set -U QT_IM_MODULE "ibus"
set -U GTK_IM_MODULE "xim"

# greeting
set -U fish_greeting ""

# misc
set -U CC "clang"
set -U NVM_DIR "~/.nvm"
set -U GOPATH "$HOME/go"

zoxide init fish --cmd cd | source
fzf --fish | source
