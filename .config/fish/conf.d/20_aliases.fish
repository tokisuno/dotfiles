#
# For some reason this file would not work in functions/ at all... idk why
# Everything seems to work in here though which is good
#

function shetup
  eval "'$(ssh-agent -s)' && ssh-add"
end

function rs
  rspec $argv[1]
end

## Quality of life
function vim
  nvim $argv[1]
end

function iv
  nvim $argv[1]
end

function ivm
  nvim $argv[1]
end

function vi
  nvim $argv[1]
end

function v
  nvim $argv[1]
end

function ovim
  /bin/vim $argv[1]
end

function ka
  killall $argv[1]
end

function claer
  clear
end

function rmrf
  rm -rf $argv[1]
end

function btw
  neofetch
end

function ff
  fastfetch
end

## dotfile stuff
function dots
  cd ~/code/repos/dotfiles
end

function vc
  cd ~/.config/nvim/lua/lucas/
end

function vc
  cd ~/.config/nvim/lua/lucas/
end

function wm
  cd ~/.config/awesome
end

function rip
  cd ~/.local/share/scripts
end

## Pacman & Yay
function syu
  sudo pacman -Syu && setxkbmap -option 'ctrl:nocaps'
end

## Navigation
function b
  cd -
end

function a
  cd ..
end

function aa
  cd ../..
end

function aaa
  cd ../../..
end

function aaaa
  cd ../../../..
end

# Git
function lg
  lazygit
end

# Mirrors
function refup
  sudo reflector --latest 5 --country canada --sort rate --save /etc/pacman.d/mirrorlist
end

