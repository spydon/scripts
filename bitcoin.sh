#!/bin/bash
# Credit to David Walsh for the original script <https://davidwalsh.name/bitcoin>
# The improved version of David's script doesn't go back to prompt. It keeps refreshing the prices every 5 seconds.
# Prices are in USD, EUR & GBP (in real time)
# curl must be installed in terminal
curl -s http://api.coindesk.com/v1/bpi/currentprice.json |  python2 -c "import json, sys; bitcoin=json.load(sys.stdin); print 'USD: ' + bitcoin['bpi']['USD']['rate'] + '  EUR: ' + bitcoin['bpi']['EUR']['rate']"
