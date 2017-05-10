function git-nuke
  git branch -D $argv
  git push origin :$argv
end
