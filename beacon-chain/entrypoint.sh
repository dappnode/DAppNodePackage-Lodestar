#!/bin/sh

exec node /usr/app/node_modules/.bin/lodestar \
    beacon \
    --preset=gnosis \
    --paramsFile=/usr/config.yaml \
    --genesisStateFile=/usr/genesis.ssz \
    --jwt-secret=/jwtsecret \
    --execution.urls $HTTP_ENGINE \
    --eth1.providerUrls $HTTP_PROVIDER \
    --dataDir /var/lib/data \
    --rest \
    --rest.address 0.0.0.0 \
    --rest.port 4000 \
    --port $P2P_PORT \
    --logFile /var/lib/data/beacon.log \
    --logFileLevel debug \
    --logFileDailyRotate 5 \
    --bootnodes=enr:-Ly4QBWdgA_Tt59pz3xeeMEIv9RXKjJn5pC4TiFxxmGcNrRAUTB5qVs6xTph7SLtLOPxlgn60mxaNyeAHc0inv1Zq40Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_LJMCJc2VjcDI1NmsxoQJW6aQs89Fzox8_YwwO1C-ubid5awCWhd8oUPP8s2VepYhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --bootnodes=enr:-Ly4QLtEwF2plyYK6wINg8p2cEvON5uxBRTGDjOVY-alCgBzfYoNqzAnYtMTRbH5iZgXAxAweh90i9FEtbN2OvhKZcMBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_LJ0qJc2VjcDI1NmsxoQLYBUr39uZ3zPfC9XK0f-g22J2Z8DF1Ax3e444dwUmy0ohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --bootnodes=enr:-Ly4QHyiqcUzJ4CtI6bhSTAZAD92UMEKwKCObZ-9hSZJAfgtXkj4JbAbhK33rXhqLFeO3isINvpPy_TUvoLB71__rOEBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_fJsSJc2VjcDI1NmsxoQJjSw3xd3o7Rj1DzE7Wxlr6mEbt5s2re4ANlP_TMDLmUohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --bootnodes=enr:-Ly4QN9Ro8-E9gyCCUuEYWlSwCbfzc2NkUGmN8YRDmg4K3rRP1FBiaDe9TWKVGaXhmb8F6qwYxW5h83hS6LjF8nJK34Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_fM6-Jc2VjcDI1NmsxoQNEtFv9oWxfpqPxFgpngTaWPHuGC6XEwaLdANypSZ-S2YhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --bootnodes=enr:-Ly4QMpHRs1843yWgB5yA2epcTBo4BrGrEB6b2fPAfxryjEEFzIUc_FOJ3b7r6h0bD_Gg-gCrX_mUgZZM8D7Xfot9J8Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhLymbsOJc2VjcDI1NmsxoQKhmKRn59_w2tt_KNQ2Jhj-F3b9hxRkFYdtW3IGgXm0oIhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --bootnodes=enr:-Ly4QO80ytPwEEXF0B6Nsnk6N-89SI3Ja-wvhnMwTgvAiKCMNvOfHwf3FbJtLvZpP7O2v4ztnpqbdYEXngvLzgDsvSEBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhI5dgFeJc2VjcDI1NmsxoQMwMSfNp9AUZNAgWzYDo2nI1KNHej3aB2NWt8j9awAlO4hzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --bootnodes=enr:-Ly4QAnBhPYD4_Cc3CyJhVqkLquWeGIY5xlKLhy9j_Bx845iNwSORtcXdLReWlK33PfqHTbqpsI-rm--egamtkrB7ywBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJO20mGJc2VjcDI1NmsxoQLhk56jmgLZTFopIhjoDlWpPiDjzLsrbnX7Z9iaOeg3PIhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --bootnodes=enr:-Ly4QNrYdrX4KY4tPgQKG3KcGySPE7QtpfFCGSujQUpQkErELFeDjuVWRzMxyyEQJTyVlTSPXxy4t9T2yrl4lBf5x8ABh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhI5dxlqJc2VjcDI1NmsxoQIzft6l-G1eo45O7v1eg0AZx4G-uwi4oGARFYQk1_vy5ohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --bootnodes=enr:-Ly4QEGDwovw841Etzs5wJquRZFMGPNNcKh6rqa5_BCI64NKYKOFjWTPh0nbwDBR7caIqEoDMKWBFzTTmqFKIQzjPpsBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhI5dfvaJc2VjcDI1NmsxoQLTtR9MTMMQxDXWi7Gn3ABZD-NMyIaq1HxUtcDrjM7qz4hzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    $EXTRA_OPTS



