#!/bin/bash
set -e

echo "Cleaning old dist..."
rm -rf dist

echo "Installing backend dependencies..."
pnpm install

echo "Building frontend..."

(cd ../frontend && pnpm install && pnpm run build)

echo "Copying build output to backend..."
cp -r ../frontend/dist ./

echo "Build completed successfully!"
