#!/bin/bash
# Deploy to Netlify
echo "Installing Netlify CLI..."
npm i -g netlify-cli

echo "Building frontend..."
cd src && npm run build

echo "Deploying to Netlify..."
netlify deploy --prod --dir=src/dist
