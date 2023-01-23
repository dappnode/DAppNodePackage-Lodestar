#!/bin/sh

# MEVBOOST: https://chainsafe.github.io/lodestar/usage/mev-integration/
if [ -n "$_DAPPNODE_GLOBAL_MEVBOOST_MAINNET" ] && [ "$_DAPPNODE_GLOBAL_MEVBOOST_MAINNET" == "true" ]; then
  echo "MEVBOOST is enabled"
  MEVBOOST_URL="http://mev-boost.mev-boost.dappnode:18550"
  if curl --retry 5 --retry-delay 5 --retry-all-errors "${MEVBOOST_URL}"; then
    EXTRA_OPTS="--builder ${EXTRA_OPTS}"
  else
    echo "MEVBOOST is enabled but ${MEVBOOST_URL} is not reachable"
    curl -X POST -G 'http://my.dappnode/notification-send' --data-urlencode 'type=danger' --data-urlencode title="${MEVBOOST_URL} is not available" --data-urlencode 'body=Make sure the mevboost is available and running'
  fi
fi

exec node /usr/app/node_modules/.bin/lodestar \
    validator \
    --network=mainnet \
    --suggestedFeeRecipient=${FEE_RECIPIENT_ADDRESS} \
    --graffiti=${GRAFFITI:0:32} \
    --keymanager true \
    --keymanager.authEnabled false \
    --keymanager.port 3500 \
    --keymanager.address 0.0.0.0 \
    --externalSigner.url=${HTTP_WEB3SIGNER} \
    --doppelgangerProtectionEnabled \
    --server=${BEACON_NODE_ADDR} \
    --logLevel=${DEBUG_LEVEL} \
    --logFileLevel=${DEBUG_LEVEL} \
    --logFile /var/lib/data/validator.log \
    $EXTRA_OPTS
