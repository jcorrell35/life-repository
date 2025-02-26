#!/bin/bash

# Check for a commit message argument
if [ -z "$1" ]; then
  echo "Error: Commit message is required."
  echo "Usage: ./push_github_changes.sh \"Your commit message\""
  exit 1
fi

# Add all changes
git add .

# Commit changes with the provided message
git commit -m "$1"

# Push changes to the remote repository
git push origin HEAD:main

echo "Changes pushed to GitHub."
