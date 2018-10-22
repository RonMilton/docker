#!/bin/bash

# Build the docker image
docker build --rm -t project/agent:latest -f docker/printagent/Dockerfile .

# Run the container and use jekyll to dist artifacts.
docker run \
-v $(pwd):/var/code \
-a stdout \
-i \
--rm \
--workdir /var/code \
--entrypoint /var/code/scripts/print_project.sh \
project/agent /var/code/scripts/print_project.sh
