FROM renovate/buildpack:2-erlang@sha256:335398b8a17e23ff94bd6bdd804e76cf0c294ae4a4a2f775c2a5038876f594e7

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.10.4
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
