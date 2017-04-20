#!/usr/bin/env bash

docker_machines=( default )

for machine in ${docker_machines[@]}; do
  docker-machine stop ${machine}
done

tmux kill-session -t turbine

