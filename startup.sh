#!/bin/bash
set -e

# Find the arroyo binary
ARROYO_BIN=$(find / -name arroyo -type f -executable 2>/dev/null | head -n 1)

if [ -z "$ARROYO_BIN" ]; then
  echo "Error: Could not find arroyo executable"
  exit 1
fi

echo "Found arroyo at $ARROYO_BIN"

# Run migrations first
echo "Running Arroyo migrations..."
$ARROYO_BIN migrate

# Then start the regular service
echo "Starting Arroyo service..."
exec $ARROYO_BIN server