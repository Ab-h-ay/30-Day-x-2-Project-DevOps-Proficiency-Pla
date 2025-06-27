#!/bin/bash

# Set your GitHub repo (update with your repo URL)
REPO_URL="https://github.com/Ab-h-ay/30-Day-x-2-Project-DevOps-Proficiency-Pla.git"
LOCAL_DIR="$HOME/devops-proficiency-30day-2project-plan"
DAY_FOLDER=$1
PROJECT_FOLDER=$2

# Clone if not already present
if [ ! -d "$LOCAL_DIR" ]; then
    git clone $REPO_URL $LOCAL_DIR
fi

cd $LOCAL_DIR
git pull origin main

# Navigate to the day/project folder
cd "$DAY_FOLDER/$PROJECT_FOLDER" || { echo "Directory not found"; exit 1; }
