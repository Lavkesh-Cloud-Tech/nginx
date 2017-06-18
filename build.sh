#!/usr/bin/env bash
echo "======================== Start build image ======================="
IMAGE_NAME=lavkesh/nginx
IMAGE_VERSION=$1
docker build -t $IMAGE_NAME:$IMAGE_VERSION .
echo "Image build => $IMAGE_NAME:$IMAGE_VERSION"
