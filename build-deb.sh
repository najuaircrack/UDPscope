#!/bin/bash
# Build Debian package

set -e

echo "Building Debian package..."

# Clean up
rm -rf deb-build/
mkdir -p deb-build

# Copy source
cp -r udpscope/* deb-build/
cp -r packaging/debian deb-build/debian
cp README.md LICENSE pyproject.toml setup.cfg requirements.txt deb-build/

# Build package
cd deb-build
debuild -us -uc

echo "Debian package built in ../"
ls -la ../*.deb