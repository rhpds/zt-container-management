#!/bin/sh
echo "Starting module called 04-cli-container-management" >> /tmp/progress.log

podman container rm --all --force #get trid of the containers made in step 1
podman image rm --all --force #get rid of the container images used in step 1
