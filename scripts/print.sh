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
--entrypoint /bin/sh \

