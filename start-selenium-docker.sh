#!/bin/bash

set -e -x

docker run -d -p 4444:4444 -v /dev/shm:/dev/shm selenium/standalone-firefox
