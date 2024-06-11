#!/usr/bin/env bash
CONTAINER_NAME='finance_api_db'

docker start $CONTAINER_NAME > /dev/null 2>&1 || \
  (
    docker run --name $CONTAINER_NAME \
               -e POSTGRES_USER=social_mine \
               -e POSTGRES_PASSWORD='F1n@nc3_ap1' \
               -d \
               -p 6789:6789 \
               postgres:alpine
  )