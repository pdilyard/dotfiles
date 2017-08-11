function pr-reviews
  set auth "Authorization: token $GITHUB_TOKEN"
  set base 'https://api.github.com/search/issues'
  set user 'user:remesh'
  set type 'is:pr'
  set label 'label:pr:review-needed'
  set sort 'sort=created'
  set order 'order=asc'

  set result (GET -H $auth "$base?q=$user+$type+$label&$sort&$order")
  set pulls (echo $result | jq --compact-output '.items | .[]')

  for pull in $pulls
    set author (echo $pull | jq --raw-output .user.login)
    set link (echo $pull | jq --raw-output .html_url)
    set number (echo $pull | jq --raw-output .number)
    set title (echo $pull | jq --raw-output .title)
    set repo (echo $pull | jq --raw-output .repository_url | string match -r '(?<=emesh\\/).*')

    echo ""

    set_color brblack
    printf "[remesh/$repo]"
    set_color blue
    printf " #$number\n"

    set_color brwhite
    echo "$title"

    set_color normal
    echo "@$author"

    set_color brblack
    echo "$link"
    set_color normal

    echo ""
  end
end
