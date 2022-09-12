#!/bin/bash

exec node /usr/app/node_modules/.bin/lodestar \
    validator \
    --preset=gnosis \
    --paramsFile=/usr/config.yaml \
    --defaultFeeRecipient ${FEE_RECIPIENT} \
    --graffiti ${GRAFFITI} \
    --rootDir /var/lib/data \
    --keymanagerEnabled \
    --server http://beacon-chain.lodestar-chiado.dappnode:4000 \
    --logLevelFile debug \
    --logFile /var/lib/data/validator.log \
    --logRotate \
    --logMaxFiles 5 \
    $EXTRA_OPTS
