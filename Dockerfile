FROM bitwalker/alpine-elixir:1.7.3

# TODO: Install version 1.4 of Phoenix
RUN mix local.hex --force \
    && mix archive.install hex phx_new 1.4.0-dev.0 --force
# mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

# Install node
# TODO: Install specific version
RUN apk add --update nodejs nodejs-npm

WORKDIR /src/game

CMD ["mix", "phx.server"]

