#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build . --tag mlapp
# Step 2: 
# List docker images

docker images ls

# Step 3: 
# Run flask app
docker run mlapp
