#!/bin/bash

# INSERT INTO `yaamp`.`coins` (`id`, `name`, `symbol`, `algo`, `rpcuser`, `rpcpasswd`, `rpchost`, `rpcport`) VALUES (1957, 'xvgblake2s', 'XVG',  'blake2s', 'rpc','rpc123','127.0.0.1', '8349');

#
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

