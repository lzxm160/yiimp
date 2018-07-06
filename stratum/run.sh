#!/bin/bash

# INSERT INTO `yaamp`.`coins` (`id`, `name`, `symbol`, `algo`, `rpcuser`, `rpcpasswd`, `rpchost`, `rpcport`,`account`,`enable`,`auto_ready`,) VALUES (1957, 'xvgblake2s', 'XVG',  'blake2s', 'rpc','rpc123','127.0.0.1', '8349','xx',1,1);
# SELECT id, name, rpchost, rpcport, rpcuser, rpcpasswd, rpcencoding, master_wallet, reward, price, "
# 		"hassubmitblock, txmessage, enable, auto_ready, algo, pool_ttf, charity_address, charity_amount, charity_percent, "
# 		"reward_mul, symbol, auxpow, actual_ttf, network_ttf, usememorypool, hasmasternodes, algo, symbol2, "
# 		"rpccurl, rpcssl, rpccert, account, multialgos, max_miners, max_shares, usesegwit "
# 		"FROM coins WHERE enable AND auto_ready AND algo='%s' ORDER BY index_avg
#找钱包
# 配置钱包
# blocknotify=/opt/xvg/yiimp/stratum/blocknotify 127.0.0.1:5766 1957 %s
# ./blocknotify 172.16.2.12:5766 1957 65b4e101cacf3e1e4f3a9237e3a74ffd1186e595d8b78fa8ea22c21ef5bf9347
# [WALLETS]
# include=172.16.2.12:8349
ulimit -n 10240
ulimit -u 10240
algo="blake2s"
# cd /var/stratum
while [ -e config/${algo}.conf ]; do
	gzip -f config/${algo}.log
        ./stratum config/${algo}
	sleep 1
done
exec bash

