#!/bin/sh

set -e -x 

cd updated-sample-app
./mvnw "sonar:sonar -Dsonar.host.url=http://host.docker.internal:9000" 
