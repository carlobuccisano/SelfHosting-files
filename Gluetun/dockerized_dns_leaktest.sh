#!/bin/bash
echo "Dns leak test and iPv4:"
sudo docker run --rm --network=container:gluetun python:alpine sh -c 'wget -q -O- https://raw.githubusercontent.com/macvk/dnsleaktest/master/dnsleaktest.py | python'
echo "iPv6 leak test:"
sudo docker run --rm --network=container:gluetun alpine:3.22 sh -c "apk add curl && curl -6 --silent https://ipv6.ipleak.net/json/"
