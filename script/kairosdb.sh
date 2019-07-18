#!/bin/bash

# posting metric to kairosdb

# Current time in seconds and add trailing 000 to become msec
now=$(date +%s000)

metric=bash.local
value=$(shuf -i 1-100 -n 1)
host=localhost

echo $now $value


echo "put $metric $now $value host=localhost service=service-account-management cluster=mad" | nc -v -w 30 $host 4242

