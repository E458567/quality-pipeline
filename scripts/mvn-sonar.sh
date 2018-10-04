#!/bin/sh

set -e -x 

cd updated-sample-app
./mvnw sonar:sonar \
  -Dsonar.host.url=http://192.168.64.3:32224
#  -Dsonar.projectKey=sample-application \
#  -Dsonar.organization=e458567-github \
#  -Dsonar.host.url=https://sonarcloud.io \
#  -Dsonar.login=dc0441ab630b639fd650949bf4e9750295a93faa
