#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=uzukwujp/flaskapp:v6

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag  uzukwujp/flaskapp:v6  uzukwujp/flaskapp:v7
docker login -u uzukwujp -p $password
# Step 3:
# Push image to a docker repository
docker push uzukwujp/flaskapp:v7


