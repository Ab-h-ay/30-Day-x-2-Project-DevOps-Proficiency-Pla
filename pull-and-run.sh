#!/bin/bash

# Update packages and install dependencies
sudo yum update -y
sudo yum install -y git docker

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

# Set environment variables
REPO_URL="https://github.com/Ab-h-ay/30-Day-x-2-Project-DevOps-Proficiency-Pla.git"
LOCAL_DIR="/home/ec2-user/devops-proficiency-30day-2project-plan"
DAY_FOLDER="Day1"        # You can replace with Day$1 if passing as param
PROJECT_FOLDER="Flask-Dockerfile"   # Replace with $2 if passing as param

# Clone repo if not already present
if [ ! -d "$LOCAL_DIR" ]; then
    git clone $REPO_URL $LOCAL_DIR
fi

cd $LOCAL_DIR
git pull origin main

# Navigate to the specific project directory
cd "$DAY_FOLDER/$PROJECT_FOLDER" || { echo "Directory not found"; exit 1; }

# Optional: build and run Docker (uncomment if needed)
# docker build -t my-app .
# docker run -d -p 5000:5000 my-app

# Ensure ec2-user owns the files
chown -R ec2-user:ec2-user "$LOCAL_DIR"
