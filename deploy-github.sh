#!/bin/bash
# Push to GitHub
echo "Initializing git repo..."
git init
git add .
git commit -m "Initial commit: AYSENT website"

echo "Adding remote..."
git remote add origin https://github.com/YOUR_USERNAME/aysent-website.git
git branch -M main
git push -u origin main
