#!/bin/bash
set -e
set -x

./memtier_benchmark \
	--unix-socket=/tmp/memcached.sock \
	-P memcache_binary \
	-n 5000000 \
	-c 1 \
	-t 1 \
	--pipeline=100 \
	--ratio=0:1 \
	--key-maximum=310000000 \
	--key-pattern=R:R \
	--distinct-client-seed \
	--hide-histogram \
