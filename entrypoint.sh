#!/bin/sh
set -e

DUCKDNS_HOSTNAME=${DUCKDNS_HOSTNAME:-""}
DUCKDNS_TOKEN=${DUCKDNS_TOKEN:-""}
WAIT_TIME=${WAIT_TIME:-"10"}

echo "Running..." | ts

while true; do

  echo -n "duckdns.org: " | ts
  curl -s "https://www.duckdns.org/update?domains=${DUCKDNS_HOSTNAME}&token=${DUCKDNS_TOKEN}"
  echo

  sleep $WAIT_TIME
done