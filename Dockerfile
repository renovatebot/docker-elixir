FROM renovate/buildpack:2-erlang@sha256:e5dd18b6972effb08e68e0d4369c92d003ae9c752b73c6b0a0a728e1c026e078

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
