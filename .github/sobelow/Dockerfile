FROM elixir:1.17.2-alpine

COPY sobelow.sh /sobelow.sh

ENV DIR=GITHUB_WORKSPACE

WORKDIR ${DIR}

ENTRYPOINT ["/sobelow.sh"]