#!/usr/bin/env bash

version=$(head -n1 VERSION)
repo="dleemoo/heroku-cli"

docker build --rm -t $repo:latest . \
  && docker tag $repo:latest $repo:$version
