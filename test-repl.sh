#!/bin/sh

docker run \
  -a stdout \
  -a stderr \
  -a stdin \
  -it --rm \
  --name testing-strider-docker-slave \
  lcruzc/strider-docker-slave-node strider-docker-slave

docker rm -f testing-strider-docker-slave 2>&1 > /dev/null
