FROM renovate/buildpack:3-erlang@sha256:499a4b1cbd8729afbb7576f618d1d97446d2f36661b1cb50cc748c111cc7b86a

RUN install-tool erlang 22.3.2

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
