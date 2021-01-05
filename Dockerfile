FROM renovate/buildpack:2-erlang@sha256:395fb9754ea09ceda6ed5c53bac0fff7c3ef8428e00525e297ee95b5880fef47

RUN install-tool erlang 22.0.2-1

# renovate: datasource=docker depName=elixir versioning=docker
ARG ELIXIR_VERSION=1.11.3
RUN install-tool elixir

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-elixir" \
      org.opencontainers.image.version="${ELIXIR_VERSION}"

USER 1000
