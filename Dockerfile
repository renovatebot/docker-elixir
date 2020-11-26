FROM renovate/buildpack:2-erlang@sha256:2ec9a9c0cc761ae1968ddd827157448b71e42d1b491611297d0c9fb9be5016e5

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.2
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
