#!/bin/bash

# to add: essential packages that i use
# sudo dnf install neovim
# sudo dnf install emacs
# sudo dnf install awesome
# sudo dnf install kitty
# sudo dnf install tmux
# sudo dnf install fish

# this is for jetbrainsmono nerd font
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv
