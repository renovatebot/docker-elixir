FROM renovate/buildpack:3-erlang@sha256:1525ef0d794d312417e8db965128e518d71fcafa5a5b7dd7bccf56c2c6f79dd3

RUN install-tool erlang 22.3.2

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
