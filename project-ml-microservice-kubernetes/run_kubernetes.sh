#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=uzukwujp/flaskapp:v7

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flask-app --image=uzukwujp/flaskapp:v7 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 100
kubectl port-forward flask-app 8000:80



