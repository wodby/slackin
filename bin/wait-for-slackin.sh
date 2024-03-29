#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

started=0
host=$1
max_try=$2
wait_seconds=$3
delay_seconds=$4

sleep "${delay_seconds}"

for i in $(seq 1 "${max_try}"); do
    if curl -s "${host}:3000" &> /dev/null; then
        started=1
        break
    fi
    echo 'Slackin is starting...'
    sleep "${wait_seconds}"
done

if [[ "${started}" -eq '0' ]]; then
    echo >&2 'Error. Slackin is unreachable.'
    exit 1
fi

echo 'Slackin has started!'