FROM renovate/buildpack:2-erlang@sha256:571dbf9172e0f35239215d69c1ab7b9f3bfc3d18305925c245021e6a8971ab2c

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.4
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
