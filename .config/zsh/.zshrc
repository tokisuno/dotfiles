ZVM_CURSOR_STYLE_ENABLED=true
fpath+=($HOME/code/repos/dotfiles/.config/zsh/pure)

# Adding in PDF preference with zsh autocompletion
zstyle ':completion:*' file-patterns '
    *.tex(D-^/*):tex-files:"TEX file"
    *.pdf(D-^/*):pdf-files:"PDF file"
    *(D-*):executables:"executable file"
    *(D-/):directories:"directory"
    ^*.(tex|pdf)(D-^/*):files:"other file"
'
zstyle ':completion:*' group-order tex-files pdf-files executables directories files
zstyle ':completion:*' group-name ''

alias mic='arecord --device="hw:1,0" --format=s16_le --rate=48 rec_$(date "+%F_%H-%M-%S").wav'

# ssh
alias shetup='eval "$(ssh-agent -s)" && ssh-add'

# ALIASES
## ls replacement
alias ls='eza --icons=always'
alias l='eza -lbF --git --icons=always'
alias ll='eza -lbGF --git --icons=always'
alias llm='eza -lbGd --git --sort=modified --icons=always'
alias la='eza -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons=always'
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --icons=always'
alias lS='eza -1 --icons=always'
alias lt='eza --tree --level=2 --icons=always'
alias lz='ls -a --icons=always'
alias ltr='eza -s modified -r --icons=always'

alias makevim='git pull && git clean -xfd && make CMAKE_BUILD_TYPE=RelWithDebInfo'

## Quality of life
alias vim='nvim'
alias iv='nvim'
alias ivm='nvim'
alias vi='nvim'
alias v='nvim'
alias ovim='/bin/vim'
alias ka='killall'
alias claer='clear'
alias rmrf='rm -rf'

alias btw='neofetch'
alias eo='setxkbmap -option esperanto:qwerty'

## dotfile stuff
alias dots="cd ~/code/repos/dotfiles"
alias vc="cd ~/.config/nvim/lua/lucas/"
alias wm="cd ~/.config/awesome"
alias path='vim ~/.config/zsh/.zshenv'
alias zse='vim ~/.config/zsh/.zshrc'
alias rip='cd ~/.local/share/scripts'

## Pacman & Yay
alias syu="sudo pacman -Syu && setxkbmap -option 'ctrl:nocaps'"

# cobra-cli
alias ccli='cobra-cli'

## Navigation
alias b='cd -'
alias a='cd ..'
alias aa='cd ../..'
alias aaa='cd ../../..'
alias aaaa='cd ../../../..'

# Git
alias lg='lazygit'

# Mirrors
alias refup='sudo reflector --latest 5 --country canada --sort rate --save /etc/pacman.d/mirrorlist'

# Font jazz
alias fonts='fc-cache -f -v'
alias fontconf="echo ~/.config/fontconfig/fonts.conf"

# Auto-completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)
eval "$(zoxide init --cmd cd zsh)"

# autoload -U promptinit; promptinit
# prompt pure

bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char

# Custom functions
sz () {
  zathura "$@" &
}

mkd () {
  mkdir -p "$@" && cd "$@"
}

gmod () {
  go mod init github.com/tokisuno/$@
}

cn () {
    cargo new "$@" --vcs none
}

source /usr/share/nvm/init-nvm.sh

eval "$(starship init zsh)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
