function git-release
  git log --format="- (**%an**) %s" $argv
end
