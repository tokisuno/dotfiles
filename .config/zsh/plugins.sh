#!/usr/bin/bash

# plugin manager because f*ck frameworks

URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
WSpace='\033[0m'

if [ -d "$ZDOTDIR/pure" ]; then
    echo -e "pure ${UGreen}present${WSpace}"
else
    echo -e "pure ${URed}not present${WSpace}"
    git clone git@github.com:sindresorhus/pure.git
fi

if [ -d "$ZDOTDIR/zsh-autosuggestions" ]; then
    echo -e "autosuggest ${UGreen}present${WSpace}"
else
    echo -e "autosuggest ${URed}not present${WSpace}"
    git clone git@github.com:zsh-users/zsh-autosuggestions.git
fi
