FROM renovate/buildpack:2-erlang@sha256:99bdc65387c7ca11472ec182e430060b9ee5050570e842e6e5a5ec461e324bcf

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.8.2
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
