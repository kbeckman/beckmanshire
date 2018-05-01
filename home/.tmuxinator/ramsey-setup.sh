#!/usr/bin/env bash

docker_machine=ramsey
docker_machine_ip=192.168.99.101

docker-machine start $docker_machine

eval $(docker-machine env $docker_machine)

docker-machine-fix-ip --machine $docker_machine --ipaddress $docker_machine_ip

docker-compose -f ~/code/github.com/lampo/docker-compose-dev.yml up -d

