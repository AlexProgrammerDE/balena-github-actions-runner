#!/usr/bin/env bash

if [[ -z "$RUNNER_CONFIG" ]]; then
  while : ; do
    printf "%s\n" "You didn´t set the config. Please read the readme for setting it."
    sleep 10
  done
fi

cd /home/actions-runner/actions-runner/

./bin/installdependencies.sh

runuser -l runner -c "cd /home/actions-runner/actions-runner/ && $RUNNER_CONFIG"

runuser -l runner -c "cd /home/actions-runner/actions-runner/ && ./run.sh"
