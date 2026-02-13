#!/bin/bash
set -e

echo "Cleaning old dist..."
rm -rf backend/dist

echo "Building frontend..."
cd frontend
npm run build

echo "Copying build output to backend..."
cp -r dist ../backend/

echo "Build completed successfully!"
