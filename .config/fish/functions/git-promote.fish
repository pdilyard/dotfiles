function git-promote
  set curr_branch (git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')

  set remote_branch (git branch -r | grep "origin/$curr_branch")
  [ -z "$remote_branch" ]; and git push origin "$curr_branch"

  set origin (git config --get "branch.$curr_branch.remote")
  [ -z "$origin" ]; and git config --add "branch.$curr_branch.remote" origin

  set merge (git config --get "branch.$curr_branch.merge")
  [ -z "$merge" ]; and git config --add "branch.$curr_branch.merge" "refs/heads/$curr_branch"
end
