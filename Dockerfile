FROM renovate/buildpack:2-erlang@sha256:c32504318a662477f0c318125c2fdd0f924ac1e4a81a17f65360494ee0d7d028

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.2
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
