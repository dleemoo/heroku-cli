FROM node:alpine
MAINTAINER Leonardo Lobo Lima <dleemoo@gmail.com>
ENV VERSION '7.7.3'
RUN yarn global add heroku@$VERSION
RUN apk add git
WORKDIR /cli
ENTRYPOINT ["/usr/local/bin/heroku"]
