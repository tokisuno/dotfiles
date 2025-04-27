#
# For some reason this file would not work in functions/ at all... idk why
# Everything seems to work in here though which is good
#

function shetup
  eval "'$(ssh-agent -s)' && ssh-add"
end

alias rs "rspec"

alias b "bash -c"

## Quality of life
alias vim "nvim"
alias iv "nvim"
alias ivm "nvim"
alias vi "nvim"
alias v "nvim"
alias ovim "/bin/vim"
alias ka "killall"
alias claer "clear"
alias ff "fastfetch"

## dotfile stuff
alias dots "cd ~/code/repos/dotfiles"
alias vc "cd ~/.config/nvim/lua/lucas/"
alias vc "cd ~/.config/nvim/lua/lucas/"
alias wm "cd ~/.config/awesome"
alias rip "cd ~/.local/share/scripts"

## laptop keyboard mapping
alias kb "setxkbmap -option 'ctrl:nocaps'"

## Navigation
alias b "cd -"
alias a "cd .."
alias aa "cd ../.."
alias aaa "cd ../../.."
alias aaaa "cd ../../../.."

# Git
alias lg "lazygit"
