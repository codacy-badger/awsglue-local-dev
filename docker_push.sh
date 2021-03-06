#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
# spark cluster running 
docker push vfrank66/awsglue-local-dev:spark-master2.2.1-hadoop2.7
docker push vfrank66/awsglue-local-dev:spark-worker2.2.1-hadoop2.7
# application submission
docker push vfrank66/awsglue-local-dev:spark-submit2.2.1-hadoop2.7