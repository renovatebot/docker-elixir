FROM renovate/buildpack:2-erlang@sha256:7b73b03b57437bcd6e6877ede618a7de5a5a423acaa3842ac346ea4fcc452347

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
