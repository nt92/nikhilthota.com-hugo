#!/bin/sh

# If a command fails then the deploy stops
set -e

# Ask for commit message
read -p 'Commit Message: ' commitvar

printf "\033[0;32mDeploying to GitHub -> DigitalOcean...\033[0m\n"

# Commit hugo source files
git add -A
git commit -m "$commitvar"
git push

# Build the project.
hugo --minify

# Go To Public folder
cd public

# Add changes to git.
git add -A

# Commit changes.
msg="updating site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push
