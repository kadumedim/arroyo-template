#!/bin/bash
set -e

# Path to the arroyo binary
ARROYO_BIN="/app/arroyo"

# Run migrations first
echo "Running Arroyo migrations..."
$ARROYO_BIN migrate

# Show available commands
echo "Available commands:"
$ARROYO_BIN --help

# Start the Arroyo service (try the common start command)
echo "Starting Arroyo service..."
exec $ARROYO_BIN start