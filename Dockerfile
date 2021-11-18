# todo: add datasource
ARG ERLANG_VERSION=22.3.2

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.12.3

FROM renovate/buildpack:5@sha256:f00fa0759fd02737867f47b67bc239aaf8b76b1bfcaf200f735d81b96358a8e0

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
