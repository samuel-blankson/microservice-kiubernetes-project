#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=/machine-learning-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region us-east-1
docker tag machine-learning-api:latest 402291212186.dkr.ecr.us-east-1.amazonaws.com/machine-learning-api:latest

# Step 3:
# Push image to a docker repository 
docker push 402291212186.dkr.ecr.us-east-1.amazonaws.com/machine-learning-api:latest

