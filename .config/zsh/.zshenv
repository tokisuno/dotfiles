#!/usr/bin/zsh

# zsh
export ZDOTDIR="$HOME/.config/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

export COLORTERM=truecolor

export ALTERNATE_EDITOR=""
export VISUAL="/usr/bin/emacs"
export EDITOR="/usr/bin/nvim"

export DICTIONARY=en_US
export PAGER=less

export GTK_THEME=Arc-Dark

export NPM_DIR="$HOME/.npm-data"
NPM_PACKAGES="$HOME/.npm-packages"

# path
export XDG_DATA_DIRS=${XDG_DATA_DIRS}:"/var/lib/flatpak/exports/share"
export XDG_DATA_DIRS=${XDG_DATA_DIRS}:"/home/poto/.local/share/flatpak/exports/share"
export PATH="$PATH:$HOME/bin"
export PATH=${PATH}:"$GHCUP_INSTALL_BASE_PREFIX/.ghcup/bin"
export PATH=${PATH}:"$HOME/.cargo/bin"
export PATH=${PATH}:"$HOME/.config/emacs/bin"
export PATH=${PATH}:"$HOME/.local/bin"
export PATH=${PATH}:"$HOME/.local/share/applications"
export PATH=${PATH}:"$HOME/.local/share/scripts"
export PATH=${PATH}:"$HOME/.luarocks/bin/digestif"
export PATH=${PATH}:"$HOME/go"
export PATH=${PATH}:"$NPM_PACKAGES/bin"
export PATH=${PATH}:"/bin"
# export PATH=${PATH}:"/root/.local/share/gem/ruby/3.2.0/bin"
# Gems are so fucking annoying
export PATH=${PATH}:"$HOME/.local/share/gem/ruby/3.2.0/bin"
export PATH=${PATH}:"/home/poto/.local/share/gem/ruby/3.3.0/bin"
export PATH=${PATH}:"/home/poto/.local/share/gem/ruby/3.6.5/bin"
export PATH=${PATH}:"/usr/bin/"
export PATH=${PATH}:"/usr/local/bin"
export PATH=${PATH}:"~/.npm-global/bin"
export PATH=${PATH}:"`go env GOPATH`/bin"

# keyboard
export GLFW_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export GTK_IM_MODULE=xim

# misc
export CC="clang"
export NVM_DIR=~/.nvm
export GOPATH="$HOME/go"

eval "$(fzf --zsh)"

# FZF
export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --border --inline-info"
export FZF_PREVIEW_COMMAND="bat --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"
export FZF_CTRL_T_OPTS="--min-height 30 --preview-window down:60% --preview-window noborder --preview '($FZF_PREVIEW_COMMAND) 2> /dev/null'"
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"
export FZF_COMPLETION_TRIGGER=']]'
export FZF_COMPLETION_OPTS='--border --info=inline'

# zsh plugins
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/.zshrc
source $ZDOTDIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh
