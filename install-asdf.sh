#!/bin/bash

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
