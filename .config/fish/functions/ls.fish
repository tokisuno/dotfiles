function ls
  command eza --icons=always --sort=type $argv
end

function l
  command eza -lbF --git --icons=always --sort=type
end

function ll
  command eza -lbGF --git --icons=always --sort=type
end

function llm
  command eza -lbGd --git --sort=modified --icons=always --sort=type
end

function la
  command eza -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons=always --sort=type
end

function lx
  command eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --icons=always --sort=type
end

function lS
  command eza -1 --icons=always --sort=type
end

function lt
  command eza --tree --level=2 --icons=always --sort=type
end

function lh
  command eza --all --icons=always --sort=type
end

function ltr
  command eza -s modified -r --icons=always --sort=type
end
