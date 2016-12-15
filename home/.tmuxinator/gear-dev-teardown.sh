#!/usr/bin/env bash

docker_machines=( default etcd swarm-master1 swarm-master2 )
#docker_machines=$(docker-machine ls --quiet)

for machine in ${docker_machines[@]}; do
  docker-machine stop ${machine}
done

