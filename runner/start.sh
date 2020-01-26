#!/usr/bin/env bash

if [[ -z "$RUNNER_CONFIG" ]]; then
  while : ; do
    printf "%s\n" "You didn´t set the config. Please read the readme for setting it."
    sleep 10
  done
fi

cd /usr/src/actions-runner/

$RUNNER_CONFIG

./run.sh
