FROM renovate/buildpack:2-erlang@sha256:73b9dceb0476599412c812178d778f8c3edacf0beef63bf1ddef7134bd1f2989

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.4
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
