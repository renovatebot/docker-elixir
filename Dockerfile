FROM renovate/buildpack:2-erlang@sha256:c769728864220557f55b39e517855fcbd363e1b46f025fb1bcf6b24008af03f2

RUN install-tool erlang 22.3.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
