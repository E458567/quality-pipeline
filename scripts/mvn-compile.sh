#!/bin/sh

set -e 
set -x 

ls -al git-sample-app

git clone git-sample-app updated-sample-app 
cd updated-sample-app
./mvnw compile test-compile
cd ..
