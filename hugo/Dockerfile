FROM alpine

RUN apk --no-cache add \
      curl \
      tar

ENV HUGO_VERSION 0.42.1
RUN curl -sSL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | tar -v -C /usr/local/bin -xz
