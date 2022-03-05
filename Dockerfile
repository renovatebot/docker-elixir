# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=22.3.4

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.3

FROM renovate/buildpack:6@sha256:65dd16c78a3ff0c4ca6b2f65eaa923556b9186a1acb78bd4691733ed22008e9b

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
