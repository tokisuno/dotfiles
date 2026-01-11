. "$HOME/.cargo/env"

export COLORTERM="truecolor"

unset GLFW_IM_MODULE
unset GTK_IM_MODULE
unset QT_IM_MODULE
unset XMODIFIERS

export GLFW_IM_MODULE="ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export XMODIFIERS="@im=ibus"

export ALTERNATE_EDITOR=""
export VISUAL="/usr/bin/emacs"
export EDITOR="/usr/bin/nvim"

export DICTIONARY="en_US"
export PAGER="less"

export NPM_DIR="$HOME/.npm-data"
export NPM_PACKAGES="$HOME/.npm-packages"

export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files

setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
# source ${ZDOTDIR}/.antidote/antidote.zsh

export GOPATH="$HOME/go"

export PATH="/bin"
export PATH=${PATH}:"/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH=${PATH}:"$HOME/bin"
export PATH=${PATH}:"/var/lib/flatpak/exports/share/applications"
export PATH=${PATH}:"$HOME/.cargo/bin"
export PATH=${PATH}:"$HOME/.config/emacs/bin"
export PATH=${PATH}:"$HOME/.local/bin"
export PATH=${PATH}:"$HOME/.local/share/applications"
export PATH=${PATH}:"$HOME/.local/share/scripts"
export PATH=${PATH}:"$HOME/go"
export PATH=${PATH}:"$HOME/.rbenv/shims"
export PATH=${PATH}:"$NPM_PACKAGES/bin"
export PATH=${PATH}:"$HOME/.rbenv/bin/"
export PATH=${PATH}:"$HOME/.npm-global/bin"
export PATH=${PATH}:"/usr/bin/"
export PATH=${PATH}:"/usr/local/bin"
export PATH=${PATH}:"$HOME/.config/emacs/bin/doom"
export PATH=${PATH}:"$HOME/code/builds/zig-master/build/stage3/bin/"
export PATH=${PATH}:"$GOPATH/bin"
export PATH=${PATH}:"/opt/homebrew/bin"

export PATH=${PATH}:"$HOME/.rbenv/versions/3.3.5/bin/gem"
export PATH=${PATH}:"$HOME/.rbenv/versions/3.3.5/bin/bundle"
export PATH=${PATH}:"$HOME/.rbenv/versions/3.3.5/bin/bundler"

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

export CC="clang"
export NVM_DIR="~/.nvm"

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --border --inline-info"
export FZF_PREVIEW_COMMAND="bat --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"

# export FZF_CTRL_T_COMMAND="command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

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

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# -------------------------------- #
# EASILY MY MOST IMPORTANT ALIASES #
# -------------------------------- #
alias claer="clear"                #
alias clae="clear"                 #
alias clera="clear"                #
alias clea="clear"                 #
alias lear="clear"                 #
alias clar="clear"                 #
alias laer="clear"                 #
                                   #
alias vim="nvim"                   #
# -------------------------------- #
# EASILY MY MOST IMPORTANT ALIASES #
# -------------------------------- #

alias vi="/bin/vim"
alias ka="killall"
alias ff="fastfetch"

alias mon="xrandr --output HDMI-A-0 --mode 1920x1080 --rate 144"

alias dots="cd ~/code/repos/dotfiles"
alias vc="cd ~/.config/nvim/lua/lucas/"
alias vc="cd ~/.config/nvim/lua/lucas/"
alias wm="cd ~/.config/awesome"
alias rip="cd ~/.local/share/scripts"

alias kb="setxkbmap -option 'ctrl:nocaps'"

alias b="cd -"
alias a="cd .."
alias aa="cd ../.."
alias aaa="cd ../../.."
alias aaaa="cd ../../../.."

alias lg="lazygit"

alias tm="tmux"
alias tma="tmux attach"
alias tmd="tmux detach-client"

alias ls="eza --icons=always --sort=type"
alias l="eza -lbF --git --icons=always --sort=type"
alias ll="eza -lbGF --git --icons=always --sort=type"
alias llm="eza -lbGd --git --sort=modified --icons=always --sort=type"
alias la="eza -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons=always --sort=type"
alias lx="eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --icons=always --sort=type"
alias lS="eza -1 --icons=always --sort=type"
alias lt="eza --tree --level=2 --icons=always --sort=type"
alias lh="eza --all --icons=always --sort=type"
alias ltr="eza -s modified -r --icons=always --sort=type"

alias shsh="'$(ssh-agent -s)' && ssh-add"

mkd() { mkdir "$@" 2> >(sed s/mkdir/mkd/ 1>&2) && cd "$_"; }

zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins

# Ensure the .zsh_plugins.txt file exists so you can add plugins.
[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt

# Lazy-load antidote from its functions directory.
fpath=(/path/to/antidote/functions $fpath)
autoload -Uz antidote

# Generate a new static file whenever .zsh_plugins.txt is updated.
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi

# Source your static plugins file.

source ${zsh_plugins}.zsh
eval "$(zoxide init zsh --cmd cd)"
source <(fzf --zsh)
