# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=22.3.4.24

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.3

FROM renovate/buildpack:6@sha256:e74995e980b0c92a878bbed8d8de3a19a3f7138a2e9fd4fc19ececbb28add033

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
