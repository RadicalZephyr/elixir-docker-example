FROM elixir:1.5.1

WORKDIR /app

ADD . /app

RUN mix local.hex --force
RUN mix deps.get
