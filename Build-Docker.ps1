#!/bin/pwsh

$NODEJS_VERSION = if ($env:NODEJS_VERSION) { $env:NODEJS_VERSION } else { "12" };

docker build --build-arg NODEJS_VERSION=$NODEJS_VERSION -t docker.arcanox.me/mapjs -t docker.arcanox.me/mapjs:latest $PSScriptRoot
docker push docker.arcanox.me/mapjs
docker push docker.arcanox.me/mapjs:latest
