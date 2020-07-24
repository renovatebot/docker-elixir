FROM renovate/buildpack:2-erlang@sha256:f8e8610bcdb69255e63e4932ce34d169be77918e91beeb6e9c74b8b926400141

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.4
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
