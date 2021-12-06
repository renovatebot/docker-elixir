# todo: add datasource
ARG ERLANG_VERSION=22.3.2

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.13.0

FROM renovate/buildpack:5@sha256:bfbfdb0f815338f4c5f82e8fc076add6440309df67c6efa92222941b2defebac

ARG ERLANG_VERSION
RUN install-tool erlang

ARG ELIXIR_VERSION
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
