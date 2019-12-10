#!/bin/sh
#
# usage: cert-info.sh remote.host.name
#
REMHOST=$1

echo |\
openssl s_client -showcerts -servername ${REMHOST} -connect ${REMHOST}:443 2> /dev/null |\
openssl x509 -inform pem -noout -text

