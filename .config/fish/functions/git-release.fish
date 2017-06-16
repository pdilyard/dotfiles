function git-release
  git log --format="%h [%an] %s" $argv
end
