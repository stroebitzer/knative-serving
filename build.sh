#!/bin/bash

VERSION=0.0.4

./gradlew clean build
#java -jar build/libs/knative-serving.jar

docker build -t ueber/knative-serving:$VERSION .
docker push ueber/knative-serving:$VERSION
#docker run --rm -p 8080:8080 ueber/knative-serving:$VERSION
