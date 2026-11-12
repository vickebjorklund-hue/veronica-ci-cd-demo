#!/bin/bash

for i in {1..10}
do
  if curl --fail --silent http://127.0.0.1:8000/health
  then
    echo "Application is healthy"
    exit 0
  fi

  sleep 2
done

echo "Verification failed"
exit 1