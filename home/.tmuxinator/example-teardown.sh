#!/usr/bin/env bash

# Using array of machine names in case we need a local swarm cluster...
docker_machines=( default )

index=0
array_length=${#docker_machines[@]}

while [ $index -lt $array_length ]; do
  docker-machine stop ${docker_machines[$index]}
  (( index++ ))
done

