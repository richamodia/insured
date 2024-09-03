#!/usr/bin/env bash
set -e

MAIN_DIR_NAME="insured"

# Validate variables
if [ -z "$MAIN_DIR_NAME" ]; then
    echo "Error: MAIN_DIR_NAME is not set. Please set it to your project directory name." >&2
    exit 1
fi

# Change ownership to ubuntu user
sudo chown -R ubuntu:ubuntu "/home/ubuntu/$MAIN_DIR_NAME"

# Create virtual environment
echo "Creating virtual environment..."
virtualenv "/home/ubuntu/$MAIN_DIR_NAME/venv"

# Activate virtual environment
echo "Activating virtual environment..."
source "/home/ubuntu/$MAIN_DIR_NAME/venv/bin/activate"

# Install dependencies
echo "Installing Python dependencies..."
pip install -r "/home/ubuntu/$MAIN_DIR_NAME/requirements.txt"

echo "Dependencies installed successfully."
