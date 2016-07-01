#!/bin/bash
geth --genesis "/home/chenquan/Workspace/chainblock/private/start/genesis.json" \
--networkid "20160630" \
--mine \
--minerthreads "1" \
--etherbase "0418e6fa9210060095cb85c2bdc6584d65d2fab2" \
--datadir "/home/chenquan/Workspace/chainblock/private/datadir" --rpc --rpcaddr "0.0.0.0" \
--rpccorsdomain --rpcapi "eth,net,web3,admin,personal" \
--keystore "/home/chenquan/Workspace/chainblock/private/start/keystore" \
--password "/home/chenquan/Workspace/chainblock/private/start/password" \
--unlock "0"
