# https://hexdocs.pm/elixir/1.13.4/compatibility-and-deprecations.html#compatibility-between-elixir-and-erlang-otp
# we rebuild from 1.8.2, so we are stuck on v22

# renovate: datasource=github-releases depName=erlang lookupName=containerbase/erlang-prebuild versioning=loose
ARG ERLANG_VERSION=22.3.4.26

# renovate: datasource=github-releases depName=elixir lookupName=elixir-lang/elixir
ARG ELIXIR_VERSION=1.13.4

FROM ghcr.io/containerbase/buildpack:4.7.3@sha256:4fad95ac4053ed67236859f1565552d1506ee06d2562108ab87df50e683dca01

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

# workaround for old renovate
RUN ln -sf /home/user /home/ubuntu && ls -la /home/ubuntu/

USER 1000
