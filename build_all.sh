#!/usr/bin/env bash

actualPwd=$(pwd)
for dir in "message-pcs" "message-push-api" "message-receiver-api" "file-api" "trending-topic-api" "user-api"; do
  echo "Building" $dir
  cd "../$dir"
  gradle clean build >/dev/null 2>/dev/null

  [[ $? -ne 0 ]] && echo "BUILD FAILED!"

  cd "$actualPwd"
done