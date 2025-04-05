set -gx FZF_DEFAULT_OPTS "--height 60% --layout=reverse --border --inline-info"
set -gx FZF_PREVIEW_COMMAND "bat --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"

set -gx FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"
set -gx FZF_CTRL_T_OPTS "--min-height 30 --preview-window down:60% --preview-window noborder --preview '($FZF_PREVIEW_COMMAND) 2> /dev/null'"
set -gx FZF_CTRL_R_OPTS "
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
set -gx FZF_ALT_C_OPTS "--preview 'tree -C {}'"
set -gx FZF_COMPLETION_TRIGGER ']]'
set -gx FZF_COMPLETION_OPTS '--border --info=inline'
