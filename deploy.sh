#!/bin/bash

# Configuration
APP_DIR="/home/ubuntu/dani/dexetera-docs"
WEB_ROOT="/var/www/doc.dexetera.org"
DOMAIN="doc.dexetera.org"
PORT="6902" # Internal port for Nginx Proxy Manager to point to

# Exit on error
set -e

echo "--- Starting Deployment at $(date) ---"

# 1. Ensure we are in the right directory
if [ ! -d "$APP_DIR" ]; then
    echo "Creating directory $APP_DIR..."
    sudo mkdir -p "$APP_DIR"
    sudo chown $USER:$USER "$APP_DIR"
fi

# If we are already in a git repo but not in the APP_DIR, we should probably stay here if it looks like the right project.
# But the user specifically asked for /home/ubuntu/dani/dexetera-docs.
if [ "$(pwd)" != "$APP_DIR" ]; then
    cd "$APP_DIR" || { echo "Failed to enter $APP_DIR"; exit 1; }
fi

# 2. System Dependencies
echo "Checking system dependencies..."
sudo apt-get update -qq

# Function to install if not present
install_if_missing() {
    if ! command -v $1 >/dev/null 2>&1; then
        echo "Installing $1..."
        sudo apt-get install -y $1
    fi
}

install_if_missing curl
install_if_missing git
install_if_missing nginx
install_if_missing build-essential

# 3. Node.js (Version 20 LTS)
if ! command -v node >/dev/null 2>&1 || [[ $(node -v) != v20* ]]; then
    echo "Installing Node.js 20..."
    curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

# 4. NPM Dependencies
echo "Installing npm dependencies..."
npm install

# 5. Build
echo "Building Docusaurus site..."
npm run build

# 6. Prepare Web Root
if [ ! -d "$WEB_ROOT" ]; then
    echo "Creating web root at $WEB_ROOT..."
    sudo mkdir -p "$WEB_ROOT"
fi

# 7. Deploy
echo "Deploying build artifacts..."
sudo rm -rf "$WEB_ROOT"/*
sudo cp -r build/* "$WEB_ROOT"/
sudo chown -R www-data:www-data "$WEB_ROOT"

# 8. Nginx Configuration
NGINX_CONF="/etc/nginx/sites-available/$DOMAIN"
if [ ! -f "$NGINX_CONF" ]; then
    echo "Creating Nginx configuration..."
    sudo bash -c "cat > $NGINX_CONF <<EOF
server {
    listen $PORT;
    server_name $DOMAIN localhost;
    root $WEB_ROOT;
    index index.html;

    # Prevent redirect loops when port doesn't match hostname
    absolute_redirect off;

    location / {
        try_files \$uri \$uri/ =404;
    }

    # Error pages
    error_page 404 /404.html;
    location = /404.html {
        internal;
    }
}
EOF"
    if [ ! -f "/etc/nginx/sites-enabled/$DOMAIN" ]; then
        sudo ln -s "$NGINX_CONF" "/etc/nginx/sites-enabled/"
    fi
    # Remove default if it exists and conflicts
    if [ -f "/etc/nginx/sites-enabled/default" ]; then
        sudo rm /etc/nginx/sites-enabled/default
    fi
fi

# 9. Reload Nginx
echo "Reloading Nginx..."
sudo nginx -t
sudo systemctl restart nginx

echo "--- Deployment Complete at $(date) ---"
echo "Site should be available at http://$DOMAIN (if DNS is configured)"
