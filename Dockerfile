FROM renovate/buildpack:2-erlang@sha256:74e155b6dd9d7294f6759f97571c76973673268dcb95690d404991b01301c513

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.4
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
