#
# Paul Dilyard
# github.com/pdilyard
#
# Fetch a hydrogen token from the server
#
# To get an anonymous token:
#   hydrogen-token --anonymous
#
# To get a token for a user:
#   hydrogen-token --email="me@remesh.org" --password="mypass"
#
# To specify the URL extension (default is 'io'):
#   hydrogen-token --anonymous --suffix=net
#
# To specify the entire URL:
#   hydrogen-token --anonymous --url="http://localhost:4000"
#

function hydrogen-token
  set url 'https://hydrogen.remesh'
  set suffix 'io'
  set anonymous false

  getopts $argv | while read -l key value
    switch $key
      case anonymous
        set anonymous true

      case email
        set email $value

      case password
        set password $value

      case url
        set url $value
        set suffix ''

      case suffix
        set suffix $value
    end
  end

  switch $anonymous
    case true
      set json (POST "$url.$suffix/users" -j '{"anonymous": true}')

    case false
      set json (POST "$url.$suffix/users/tokens" -j "{\"email\": \"$email\", \"password\": \"$password\"}")
  end

  set token (echo $json | jq .token | tr -d '"')

  echo $token
end
