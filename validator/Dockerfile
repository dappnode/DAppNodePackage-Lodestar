ARG UPSTREAM_VERSION
FROM chainsafe/lodestar:${UPSTREAM_VERSION}

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY security/api-token.txt /var/lib/data/validator-db/api-token.txt

ENTRYPOINT ["sh", "-c", "/usr/local/bin/entrypoint.sh"]