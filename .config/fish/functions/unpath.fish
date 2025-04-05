function unset
  set PATH (string match -v $argv[1] $PATH)
end
