#! /bin/bash

echo "Building Docker image..."
docker build -t docker-static-site .

echo "Stopping old container..."
docker stop docker-static-container 2>/dev/null || true

echo "Removing old container..."
docker rm docker-static-container 2>/dev/null || true

echo "Starting new container..."
docker run -d -p 8080:80 --name docker-static-container docker-static-site

echo "Deployment complete!"
echo "Open http://localhost:8080"


