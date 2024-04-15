#!/bin/bash
set -e
set -x

./memtier_benchmark \
	--server=localhost \
	--port=6379 \
	-n 'allkeys' \
	-c 1 \
	-t 1 \
	--ratio=1:0 \
	--data-size=100 \
	--key-maximum=4302540 --key-pattern=S:S \
