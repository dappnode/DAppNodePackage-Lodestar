ARG UPSTREAM_VERSION
FROM chainsafe/lodestar:next

COPY jwtsecret.hex /jwtsecret
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/usr/local/bin/entrypoint.sh"]
