#!/bin/bash

# Define the repositories and their paths
repositories=(
    "/root/docker-shell/"
)

# Pull changes from Git repository
echo "Pulling changes from Git repository"
git pull origin main

# Show changes pulled from the repository
echo "Changes pulled from the Git repository:"
git status

# Loop through each repository
for repo_path in "${repositories[@]}"; do

    echo "Bringing down containers for repository at: ${repo_path}"
    sudo docker-compose -f "$repo_path/docker-compose.yml" down

    echo "Bringing up containers for repository at: ${repo_path}"
    sudo docker-compose -f "$repo_path/docker-compose.yml" up -d
done

# Display status of all Docker containers
echo "Current Docker container status:"
sudo docker ps -a

