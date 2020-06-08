#!/bin/bash
curl -s --compressed "https://api.stackexchange.com/2.2/search?fromdate=$(date -d "yesterday 00:00" +%s)&order=desc&sort=activity&tagged=flame&site=stackoverflow" | python2 -c "import json, sys; posts=json.load(sys.stdin); print 'Flame: ' + str(len(posts['items']))"
