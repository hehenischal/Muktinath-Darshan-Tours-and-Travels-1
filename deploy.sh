#!/bin/bash

# Git add, commit with user input message, and push to remote

read -p "Enter commit message: " commit_message

if [ -z "$commit_message" ]; then
    echo "Error: Commit message cannot be empty"
    exit 1
fi

echo "Adding files..."
git add .

echo "Committing with message: $commit_message"
git commit -m "$commit_message"

echo "Pushing to remote..."
git push

echo "Done!"
