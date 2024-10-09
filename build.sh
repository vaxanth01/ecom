#!/bin/bash

# Build the project
echo "Building the project..."

# Install dependencies
python3.9 -m pip install -r requirements.txt

# Run migrations
echo "Making migrations..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
python3.9 manage.py collectstatic --noinput --clear
