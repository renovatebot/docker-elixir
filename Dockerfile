# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=24.3.4.0

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.4

FROM renovate/buildpack:6@sha256:fd3ecf7756539161dcc747890f7485c03284abed0d5b991b02926266f1f8e766

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
