# todo: add datasource
ARG ERLANG_VERSION=22.3.2

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.4

FROM renovate/buildpack:4-erlang@sha256:07bf48c649b47672844840e3f6135ab98c4da094661d392c9211a6d331b3bf2e

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
