#!/bin/bash

pushd .
    mkdir -p ~/github.com/tj
    cd ~/github.com/tj
    git clone https://github.com/tj/burl
    cd ~/github.com/tj/burl
    make install
popd
