function hydrogen-version
  GET https://hydrogen.remesh.$argv | jq .version
end
