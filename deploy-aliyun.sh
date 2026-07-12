#!/bin/bash
# Deploy to Alibaba Cloud OSS
echo "Installing OSS CLI..."
npm i -g @alicloud/oss-cli

echo "Building frontend..."
cd src && npm run build

echo "Uploading to OSS..."
oss cp -r src/dist oss://your-bucket-name/ --acl=public-read
