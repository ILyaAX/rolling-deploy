#!/bin/bash
set -x

url=$1

while true do
        sleep 1;
        do curl -v "http://$url"
done