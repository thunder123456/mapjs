#!/bin/sh

SCRIPT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker build --build-arg NODEJS_VERSION=${NODEJS_VERSION:-12} -t docker.arcanox.me/mapjs -t docker.arcanox.me/mapjs:latest $SCRIPT_ROOT
docker push docker.arcanox.me/mapjs
docker push docker.arcanox.me/mapjs:latest
