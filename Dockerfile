FROM renovate/buildpack:2-erlang@sha256:5e5a113789136a3b924929fa595df2fff5be78bac9beea6899d64a260b95deac

# Erlang

RUN install-tool erlang 22.0.2-1

# Elixir

# renovate: datasource=docker versioning=docker
RUN install-tool elixir 1.8.2