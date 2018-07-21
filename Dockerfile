FROM node:alpine
MAINTAINER Leonardo Lobo Lima <dleemoo@gmail.com>

ENV VERSION=7.7.3 \
    DIR=/cli

RUN set -ex \
  && yarn global add heroku@$VERSION \
  && apk add --no-cache git \
  && mkdir $DIR \
  && chown node. $DIR

USER node
WORKDIR $DIR
ENTRYPOINT ["/usr/local/bin/heroku"]
