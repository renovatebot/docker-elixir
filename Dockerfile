# todo: add datasource
ARG ERLANG_VERSION=22.3.2

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.4

FROM renovate/buildpack:4-erlang@sha256:19e5ca746c12a777db8f36c45f2cbec23a8e221d8d57743c1c5b156bd6283924

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
