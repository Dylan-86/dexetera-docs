#!/bin/bash

# Configuration
PROJECT_DIR="/home/ddy/dexetera-docs"
PORT=6902

echo "Starting deployment at $PROJECT_DIR..."

# Navigate to project directory
if [ ! -d "$PROJECT_DIR" ]; then
    echo "Directory $PROJECT_DIR does not exist. Please ensure the project is cloned there."
    exit 1
fi

cd "$PROJECT_DIR" || exit

# Pull latest changes
echo "Fetching latest changes..."
git pull origin main || git pull origin master

# Install dependencies
echo "Installing dependencies..."
npm install

# Build the project
echo "Building the project..."
npm run build

# Start or restart the server (using npm run serve)
# Note: In a real production environment, you might use PM2 or a systemd service.
# For now, we will use the serve command which we've configured for port 6902.

echo "Deployment complete! You can start the server with: npm run serve"
echo "The site will be available on port $PORT."
