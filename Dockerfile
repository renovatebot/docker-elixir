# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=22.3.4.25

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.4

FROM renovate/buildpack:6@sha256:253e1561e704274687602f20f5e7835f8440f32d38f6520ab7b59e50ae676c48

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
