set -U COLORTERM "truecolor"

set -U ALTERNATE_EDITOR ""
set -U VISUAL "/usr/bin/emacs"
set -U EDITOR "/usr/bin/nvim"

set -U DICTIONARY en_US
set -U PAGER less

# set -U GTK_THEME Arc-Dark

set -U NPM_DIR "$HOME/.npm-data"
set -U NPM_PACKAGES "$HOME/.npm-packages"

# path
set -U XDG_DATA_DIRS $XDG_DATA_DIRS "/var/lib/flatpak/exports/share"
set -U XDG_DATA_DIRS $XDG_DATA_DIRS "/home/poto/.local/share/flatpak/exports/share"

set -U PATH $PATH "/bin"
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.cargo/bin"
fish_add_path "$HOME/.config/emacs/bin"
fish_add_path "$HOME/.local/bin"
fish_add_path "$HOME/.local/share/applications"
fish_add_path "$HOME/.local/share/scripts"
fish_add_path "$HOME/go"
fish_add_path "$NPM_PACKAGES/bin"
# set -U PATH$PATH "/root/.local/share/gem/ruby/3.2.0/bin"
fish_add_path "$HOME/.local/share/gem/ruby/3.2.0/bin"
fish_add_path "$HOME/poto/.local/share/gem/ruby/3.3.0/bin"
fish_add_path "$HOME/poto/.local/share/gem/ruby/3.6.5/bin"
fish_add_path "$HOME/.npm-global/bin"
fish_add_path "/usr/bin/"
fish_add_path "/usr/local/bin"
fish_add_path "`go env GOPATH`/bin"
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
