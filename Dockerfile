# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=24.3.3.0

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.4

FROM renovate/buildpack:6@sha256:da38140d4f078d577019700c38c9c4471c0947c5b0c91eee352a84252c4bc114

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
