#!/bin/bash
set -e

# Path to the arroyo binary
ARROYO_BIN="/app/arroyo"

# Run migrations first
echo "Running Arroyo migrations..."
$ARROYO_BIN migrate

# Start the Arroyo service with the cluster command
echo "Starting Arroyo cluster..."
exec $ARROYO_BIN cluster