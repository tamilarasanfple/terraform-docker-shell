#!/bin/bash

# Define the repositories and their paths
repositories=(
    "/root/docker-shell/"
)

# Loop through each repository
for repo_path in "${repositories[@]}"; do
    echo "Bringing down containers for repository at: ${repo_path}"
    docker-compose -f "$repo_path/docker-compose.yml" down

    echo "Bringing up containers for repository at: ${repo_path}"
    docker-compose -f "$repo_path/docker-compose.yml" up -d

    echo "Checking running containers for repository at: ${repo_path}"
    docker ps -a
done

