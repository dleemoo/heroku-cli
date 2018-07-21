# heroku-cli

Simple image of docker to use the heroku-cli as a shell function.

This repository contains only the image of the docker and is not required to
run the client.

## usage

Add a function in your shell (expect user ID equals to 1000 in host and in
docker image as node user) to be more convenient:

```
export HEROKU_NETRC=$HOME/tmp/heroku.netrc
export HEROKU_IMAGE=dleemoo/heroku-cli:0.0.2
function heroku() {
  mkdir -p $(dirname $HEROKU_NETRC)
  touch $HEROKU_NETRC
  docker run --rm -it -v $(pwd):/cli:rw -v $HEROKU_NETRC:/home/node/.netrc:rw $HEROKU_IMAGE $@
}
```
