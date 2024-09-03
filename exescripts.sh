#!/bin/bash
set -e

# Git repository URL
GIT_REPO_URL="https://github.com/richamodia/insured.git"


# directory name
MAIN_DIR_NAME="insured"

# Clone repository
git clone "$GIT_REPO_URL" "/home/ubuntu/$MAIN_DIR_NAME"

cd "/home/ubuntu/$MAIN_DIR_NAME"

# Make all .sh files executable
chmod +x scripts/*.sh

# Execute scripts for OS dependencies, Python dependencies, Gunicorn, Nginx, and starting the application
./scripts/instance_os_dependencies.sh
./scripts/python_dependencies.sh
./scripts/gunicorn.sh
./scripts/nginx.sh
./scripts/start_app.sh
