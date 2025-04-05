function ls
  command eza --icons=always $argv
end

function l
  command eza -lbF --git --icons=always
end

function ll
  command eza -lbGF --git --icons=always
end

function llm
  command eza -lbGd --git --sort=modified --icons=always
end

function la
  command eza -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons=always
end

function lx
  command eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --icons=always
end

function lS
  command eza -1 --icons=always
end

function lt
  command eza --tree --level=2 --icons=always
end

function lh
  command eza --all --icons=always
end

function ltr
  command eza -s modified -r --icons=always
end
