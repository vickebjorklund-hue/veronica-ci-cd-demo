#!/bin/bash

docker build -t devops25-cicd-demo:local .

docker rm -f devops25-app 2>/dev/null || true

docker run -d \
  --name devops25-app \
  -p 8000:8000 \
  devops25-cicd-demo:local