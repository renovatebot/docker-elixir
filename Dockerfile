FROM renovate/buildpack:2-erlang@sha256:f2420d72b4f9bc225b07f85cc8ac703a6b3515383b455a7bbd9abaff7cd8d3cc

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
