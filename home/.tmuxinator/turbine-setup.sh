#!/usr/bin/env bash

docker_machines=( default )

for machine in ${docker_machines[@]}; do
  docker-machine start ${machine}
done

eval $(docker-machine env default)

docker-machine-fix-ip --machine default --ipaddress 192.168.99.105

docker-compose -f ~/Source-Code/github.build.ge.com/cloud-center/paas-orchestration/development-compose.yml up -d

