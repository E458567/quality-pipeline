#!/bin/sh

set -e -x 

cd updated-sample-app
./mvnw dockerfile:build
