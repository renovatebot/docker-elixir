FROM renovate/buildpack:3-erlang@sha256:d757cfd35ab0565763b53aacd1fcb5a7112637a7b41ceb1e42e2d74314a42d1e

RUN install-tool erlang 22.3.2

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
