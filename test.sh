#!/bin/bash
set -x

url=$1

while true do
        sleep 0.5;
        do curl -s -o /dev/null -w "%{http_code}" "http://$url"
done
