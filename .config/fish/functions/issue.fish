function issue
  set number "$argv[1]_"
  set name (echo $argv[2..-1] | tr '[:upper:]' '[:lower:]' | tr -s ' ' '-')

  git checkout -b "$number$name"
end
