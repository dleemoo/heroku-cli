FROM node:14.4.0-alpine3.12
MAINTAINER Leonardo Lobo Lima <dleemoo@gmail.com>

ENV VERSION=7.42.1 \
    DIR=/cli

RUN set -ex \
  && yarn global add heroku@$VERSION \
  && apk add --no-cache git \
  && mkdir $DIR \
  && chown node. $DIR

USER node
WORKDIR $DIR
ENTRYPOINT ["/usr/local/bin/heroku"]
