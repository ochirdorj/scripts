#!/bin/bash

curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $D_TOKEN" \
  -d '{"name":"tugsuu-testing","region":"nyc3","size":"s-1vcpu-1gb","image":"centos-stream-9-x64","ssh_keys":["ce:f6:8e:51:76:e5:dd:b7:3a:6c:c9:31:7b:a8:d3:c6"]}' \
  "https://api.digitalocean.com/v2/droplets"