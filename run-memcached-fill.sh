#!/bin/bash
set -e
set -x

./memtier_benchmark \
	--unix-socket=/tmp/memcached.sock \
	-P memcache_binary \
	-n 'allkeys' \
	-c 5 \
	--pipeline=100 \
	-t 40 \
	--ratio=1:0 \
	--data-size=100 \
	--key-maximum=310000000 \
	--key-pattern=P:P \
	--hide-histogram \
	--distinct-client-seed \
