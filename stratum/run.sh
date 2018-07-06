#!/bin/bash

# INSERT INTO `yaamp`.`coins` (`id`, `name`, `symbol`, `algo`, `rpcuser`, `rpcpasswd`, `rpchost`, `rpcport`) VALUES (1957, 'xvgblake2s', 'XVG',  'blake2s', 'rpc','rpc123','127.0.0.1', '8349');

#
ulimit -n 10240
ulimit -u 10240

# cd /var/stratum
while [ -e config/${1}.conf ]; do
	gzip -f config/${1}.log
        ./stratum config/$1
	sleep 1
done
exec bash

