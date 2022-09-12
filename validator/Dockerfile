ARG UPSTREAM_VERSION
FROM chainsafe/lodestar:${UPSTREAM_VERSION}

COPY entrypoint.sh /tmp/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/tmp/entrypoint.sh"]