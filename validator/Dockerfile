ARG UPSTREAM_VERSION
FROM chainsafe/lodestar:${UPSTREAM_VERSION}

COPY chiado/config.yaml /usr/config.yaml
COPY chiado/genesis.ssz /usr/genesis.ssz
COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]