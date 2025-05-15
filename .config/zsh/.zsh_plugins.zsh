fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-jeffreytse-SLASH-zsh-vi-mode" )
source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-jeffreytse-SLASH-zsh-vi-mode/zsh-vi-mode.plugin.zsh"
fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-autosuggestions" )
source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
if ! (( $+functions[zsh-defer] )); then
  fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-defer" )
  source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-defer/zsh-defer.plugin.zsh"
fi
fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zdharma-continuum-SLASH-fast-syntax-highlighting" )
zsh-defer source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zdharma-continuum-SLASH-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-history-substring-search" )
source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-history-substring-search/zsh-history-substring-search.plugin.zsh"
fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-sindresorhus-SLASH-pure" )
source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-sindresorhus-SLASH-pure/pure.plugin.zsh"
