#!/bin/bash

if [ $# != 1 ]; then
  echo "Usage: ./loadgen.sh <service-addr>"
  exit 1
fi

SERVICE_ADDR=$1
LOOP_NUM=100000
SLEEP_TIME=1

for i in `seq $LOOP_NUM`; do
  status=`curl -o /dev/null -w '%{http_code}\n' -s $SERVICE_ADDR/productpage`
  echo "status code: $status"

  sleep $SLEEP_TIME
done
