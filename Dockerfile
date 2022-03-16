# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=22.3.4.24

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.3

FROM renovate/buildpack:6@sha256:b623437ef365744b7d4b31a259205b46e17612f1ec3f3153f313cd783ed70dfb

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
