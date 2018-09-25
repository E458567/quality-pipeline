#!/bin/sh

set -e 
set -x 

git clone git-sample-app updated-sample-app 
cd updated-sample-app
./mvnw compile test-compile
