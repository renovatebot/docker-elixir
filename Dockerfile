FROM renovate/base@sha256:43ca1bebe0b003e52b5a5279bf8b711cc80974f016455ae85529e022ceea66da

USER root

RUN cd /tmp && \
    curl https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -o erlang-solutions_1.0_all.deb && \
    dpkg -i erlang-solutions_1.0_all.deb && \
    rm -f erlang-solutions_1.0_all.deb

RUN apt-get update && apt-get install -y esl-erlang elixir && apt-get clean

USER ubuntu

RUN mix --version
