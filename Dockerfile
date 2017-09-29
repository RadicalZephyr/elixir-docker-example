FROM elixir:1.5.1

WORKDIR /app

ADD . /app

RUN mix deps.get

EXPOSE 80

CMD ["mix", "phx.server"]
