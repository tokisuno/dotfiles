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

if [ -d "$ZDOTDIR/zsh-autocomplete" ]; then
    echo -e "autocomplete ${UGreen}present${WSpace}"
else
    echo -e "autocomplete ${URed}not present${WSpace}"
    git clone git@github.com:marlonrichert/zsh-autocomplete.git
fi

if [ -d "$ZDOTDIR/zsh-autosuggestions" ]; then
    echo -e "autosuggest ${UGreen}present${WSpace}"
else
    echo -e "autosuggest ${URed}not present${WSpace}"
    git clone git@github.com:zsh-users/zsh-autosuggestions.git
fi

if [ -d "$ZDOTDIR/zsh-edit" ]; then
    echo -e "zsh-edit ${UGreen}present${WSpace}"
else
    echo -e "zsh-edit ${URed}not present${WSpace}"
    git clone git@github.com:marlonrichert/zsh-edit.git
fi

if [ -d "$ZDOTDIR/zsh-vi-mode" ]; then
    echo -e "zsh-vi-mode ${UGreen}present${WSpace}"
else
    echo -e "zsh-vi-mode ${URed}not present${WSpace}"
    git clone git@github.com:jeffreytse/zsh-vi-mode.git
fi
