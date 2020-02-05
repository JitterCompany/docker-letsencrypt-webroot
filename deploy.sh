#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Usage: $0 <tag>"
    exit 1
fi

TAG="$1"

git tag -a $TAG
docker build -t jittercompany/letsencrypt-webroot:$TAG .
docker push jittercompany/letsencrypt-webroot:$TAG
