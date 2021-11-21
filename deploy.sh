#!/bin/sh

# If a command fails then the deploy stops
set -e

# Ask for commit message
read -p 'Commit Message: ' commitvar

# Build the project.
hugo --minify

# Go To Public folder
cd public

# Add changes to git.
git add -A

# Commit changes.
git commit -m "$commitvar"

# Push source and build repos.
git push

# Commit hugo source files
cd ..
git add -A
git commit -m "$commitvar"
git push