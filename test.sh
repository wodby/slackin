#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

name=$1
image=$2
slackTeam=$3
slackToken=$4

cid="$(docker run -d -e SLACK_TEAM=${slackTeam} -e SLACK_TOKEN=${slackToken} --name "${name}" "${image}")"
trap "docker rm -vf $cid > /dev/null" EXIT

slackin() {
	docker run --rm -i --link "${name}" "${image}" "${@}"
}

echo -n "Waiting for Slackin to start... "
slackin make check-ready host="${name}" max_try=10
echo "OK"

echo -n "Checking Slackin version... "
slackin slackin -v | grep -q "2.2.*"
echo "OK"
