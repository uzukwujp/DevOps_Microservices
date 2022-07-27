#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=uzukwujp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create configmap flask-app --from-file=/home/ubuntu/DevOps_Microservices/project-ml-microservice-kubernetes/model_data
sleep 10
kubectl apply -f /home/ubuntu/DevOps_Microservices/project-ml-microservice-kubernetes/infra/pod.yaml



# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 20
kubectl port-forward flaskApp 8000:80


