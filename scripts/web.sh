#!/bin/bash

# Build the docker image
docker build --rm -t project/agent:latest -f docker/webagent/Dockerfile .

# Run the container and run the jekyll server for development.
docker run \
--name project \
-v $(pwd):/var/code \
--dns=10.255.255.254 \
--dns=8.8.8.8 \
-p 4000:4000 \
--expose 4000 \
-a stdout \
-i \
--rm \
--workdir /var/code \
--entrypoint /bin/bash \
project/agent /var/code/scripts/start_web.sh
