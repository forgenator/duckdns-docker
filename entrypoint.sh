#!/bin/sh
set -e

DYN_HOSTNAME=${DYN_HOSTNAME:-""}
DYN_USER=${DYN_USER:-""}
DYN_PASS=${DYN_PASS:-""}
DUCKDNS_HOSTNAME=${DUCKDNS_HOSTNAME:-""}
DUCKDNS_TOKEN=${DUCKDNS_TOKEN:-""}
WAIT_TIME=${WAIT_TIME:-"10"}

echo "Running..." | ts

while true; do

  echo -n "dynu.com: " | ts
  curl -s "https://api.dynu.com/nice/update?username=${DYN_USER}&password=${DYN_PASS}&hostname=${DYN_HOSTNAME}"
  echo

  echo -n "duckdns.org: " | ts
  curl -s "https://www.duckdns.org/update?domains=${DUCKDNS_HOSTNAME}&token=${DUCKDNS_TOKEN}"
  echo

  sleep $WAIT_TIME
done