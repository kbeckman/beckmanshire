#!/usr/bin/env bash

# Using array of machine names in case we need a local swarm cluster...
docker_machines=( default )
docker_machines_ips=( 192.168.99.102 )

index=0
array_length=${#docker_machines[@]}

while [ $index -lt $array_length ]; do
  docker-machine start ${docker_machines[$index]}
  docker-machine-fix-ip --machine ${docker_machines[$index]} --ipaddress ${docker_machines_ips[$index]}
  (( index++ ))
done

# docker-compose -f ~/code/github.com/kbeckman/web-app/development-compose.yml up -d
# docker-compose -f ~/code/github.com/kbeckman/rest-api/development-compose.yml up -d

