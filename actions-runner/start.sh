#!/usr/bin/env bash

adduser --disabled-password --gecos "" runner

if [[ -z "$RUNNER_CONFIG" ]]; then
  while : ; do
    printf "%s\n" "You didn´t set the config. Please read the readme for setting it."
    sleep 10
  done
fi

cd /usr/src/actions-runner/

./bin/installdependencies.sh

runuser -l runner -c "cd /usr/src/actions-runner/ && $RUNNER_CONFIG"

runuser -l runner -c "cd /usr/src/actions-runner/ && ./run.sh"
