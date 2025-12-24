#!/bin/bash
# Build Snap package

set -e

echo "Building Snap package..."

# Install snapcraft if not present
if ! command -v snapcraft &> /dev/null; then
    echo "Installing snapcraft..."
    sudo snap install snapcraft --classic
fi

# Build snap
cd packaging/snap
snapcraft

echo "Snap package built:"
ls -la *.snap