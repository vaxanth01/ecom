#!/bin/bash

# Install pip if it's not already installed
echo "Ensuring pip is installed..."
python3.9 -m ensurepip --upgrade

# Install project dependencies
echo "Installing dependencies..."
python3.9 -m pip install --upgrade pip
python3.9 -m pip install -r requirements.txt

# Run migrations
echo "Making migrations..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
python3.9 manage.py collectstatic --noinput --clear
