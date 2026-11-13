#!/bin/bash

echo "=== Verifying application ==="

for i in {1..10}
do
  if curl --fail --silent http://127.0.0.1:8000/health
  then
    echo
    echo "Application is healthy"
    exit 0
  fi

  echo "Attempt $i failed, waiting..."
  sleep 2
done

echo "Verification failed"
docker logs devops25-app 2>/dev/null || true
exit 1