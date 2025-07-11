#!/bin/bash

# to add: essential programs that i use
# programs = {
#   alacritty,
#   awesome,
#   emacs
#   fish
#   neovim,
#   tmux,
# }

# install necessary latex packages

# this is for jetbrainsmono nerd font
# should check if ~/.local/share/fonts exists already
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv
