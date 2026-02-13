#!/bin/bash
set -e  # exit on error

echo "Starting build..."

pnpm run build:ui

echo "Build completed successfully!"
