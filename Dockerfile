FROM renovate/buildpack:2-erlang@sha256:0b7929140035fceaae096be3670f40acd9d6b6828072639d4db93d712dcd842a

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.2
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
