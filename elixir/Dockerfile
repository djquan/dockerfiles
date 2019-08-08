FROM elixir:1.9-alpine

RUN apk add --update build-base npm git bash openssl

RUN mix local.hex --force
RUN mix local.rebar --force
