# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=24.3.4.1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.4

FROM renovate/buildpack:6@sha256:b5a48747676645f972871e7e5277f3fed2d7d5a3df261c6a8238e6a8cf667d06

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
