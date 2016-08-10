#!/bin/bash

if [ -z "$1" ]
  then
    echo "no Docker Container ID given"
    exit 0
fi

cat ./docker-test-db.sql | docker exec -i $1 mysql