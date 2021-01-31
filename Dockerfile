FROM renovate/buildpack:2-erlang@sha256:b874707bfa2df33d5fc9d02b26458cd7d40e2b098e70ab9cecc198ce1dd6bfcd

RUN install-tool erlang 22.3.2

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
