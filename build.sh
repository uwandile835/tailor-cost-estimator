#!/bin/bash

# Tailor Cost Estimator - Render Build Script

echo "Starting build process..."

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

# Run database migrations
echo "Running migrations..."
python manage.py migrate --noinput

echo "Build completed"
