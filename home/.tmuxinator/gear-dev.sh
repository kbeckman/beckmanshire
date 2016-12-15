#!/usr/bin/env bash

docker_machines=( default etcd swarm-master1 swarm-master2 )
#docker_machines=$(docker-machine ls --quiet)

for machine in ${docker_machines[@]}; do
  docker-machine start ${machine}
done

eval $(docker-machine env default)

docker-machine-fix-ip --machine default --ipaddress 192.168.99.105
docker-machine-fix-ip --machine etcd --ipaddress 192.168.99.114
docker-machine-fix-ip --machine swarm-master1 --ipaddress 192.168.99.110
docker-machine-fix-ip --machine swarm-master2 --ipaddress 192.168.99.116

docker-compose -f ~/Source-Code/GE/Cloud-Center/paas-orchestration/development-compose.yml up -d

