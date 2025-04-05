function fish_user_paths --description 'print a pretty listing of the $PATH'
  set -l p (echo $PATH[1..-1])
  # ❗️ requires GNU sed not BSD
  set -l p_colon (echo "$p" | sed s'/\ \//:\//g; s/\ ~/:~/g; s/\ .:/:.:/g')
  echo "$p_colon"  | string split ":" | nl
  echo "The above list are the ordered entries in the \$PATH"
  echo "$fish_user_paths"
  echo "The above list are the ordered entries in the \$fish_user_paths"
end
