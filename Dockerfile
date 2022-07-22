# https://hexdocs.pm/elixir/1.13.4/compatibility-and-deprecations.html#compatibility-between-elixir-and-erlang-otp
# we rebuild from 1.8.2, so we are stuck on v22

# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=22.3.4.26

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.4

FROM renovate/buildpack:6@sha256:bee65d1f1bd568bf292f22cd4f39e60e3bf44966f76069d68d11cc49c6165e67

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
