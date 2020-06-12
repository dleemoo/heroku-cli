# heroku-cli

Docker image to use the heroku-cli as a shell function defined at the host and
that uses a container to run the heroku client.

This repository contains only the docker image used in the build process and is
not required to execute the heroku-cli. Using the function at the first time
will pull required image from dockerhub.

## usage

Add a function in your shell to be more convenient:

```bash
function heroku() {
  heroku_netrc=$HOME/tmp/heroku.netrc
  heroku_image=dleemoo/heroku-cli:0.0.3
  mkdir -p $(dirname $heroku_netrc)
  touch $heroku_netrc
  docker run --rm -it -v $(pwd):/cli:rw -v $heroku_netrc:/home/node/.netrc:rw $heroku_image $@
}
```

This assumes that the user ID is equal to `1000` in host and in docker image as
the `node` user.
