FROM renovate/buildpack:2-erlang@sha256:ade627ef458c5fbbe4fa9075851639b35ae0eae3716d53eda3d0e96cc581a61a

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.4
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
