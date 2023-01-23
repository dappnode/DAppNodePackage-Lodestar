ARG UPSTREAM_VERSION
FROM chainsafe/lodestar:${UPSTREAM_VERSION}

# curl is required to check if mev-boost is running
RUN apk update && apk add --no-cache curl

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/usr/local/bin/entrypoint.sh"]
