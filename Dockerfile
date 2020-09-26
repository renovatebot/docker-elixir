FROM renovate/buildpack:2-erlang@sha256:ca68e7f4b8a547dfe9b8614ef9b79ae29b59066ebd31dc3a034f0dd64462ec0d

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.4
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
