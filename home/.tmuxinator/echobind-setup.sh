#!/usr/bin/env bash

docker_machine=echobind
docker_machine_ip=192.168.99.100

docker-machine start $docker_machine

eval $(docker-machine env $docker_machine)

docker-machine-fix-ip --machine $docker_machine --ipaddress $docker_machine_ip

docker-compose -f ~/code/github.com/echobind/hearken/ems/docker-compose-dev.yml up -d

