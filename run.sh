#!/usr/bin/env bash



# build:
# docker build -t hugogo -f Dockerfile .

# docker run --rm -v "$PWD:/go/src/app" hugogo

docker run -it -v "$(PWD):/go/src/app" hugogo sh

# docker exec -it hugogo sh