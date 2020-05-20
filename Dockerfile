FROM renovate/buildpack:2-erlang@sha256:92b7ca56202d1893e5656ec505fa67cec897d41201aeb1c0f1093f7537952fd7

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.8.2
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
