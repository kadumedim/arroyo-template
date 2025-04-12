#!/bin/bash
set -e

# Run migrations first
echo "Running Arroyo migrations..."
arroyo migrate

# Then start the regular service
echo "Starting Arroyo service..."
exec arroyo server