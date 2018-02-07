#!/usr/bin/env bash
printf "$1: " &&
curl -s https://min-api.cryptocompare.com/data/price\?fsym\=$1\&tsyms\=USD |
python2 -c "import json, sys; alt=json.load(sys.stdin); print str(alt['USD'])" ||
echo "No connection"
