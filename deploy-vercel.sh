#!/bin/bash
# Deploy to Vercel
echo "Installing Vercel CLI..."
npm i -g vercel

echo "Building frontend..."
cd src && npm run build

echo "Deploying to Vercel..."
vercel --prod
