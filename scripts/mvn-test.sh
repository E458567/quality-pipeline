#!/bin/sh

set -e 
set -x 

cd /updated-sample-app
./mvnw "surefire:test"
