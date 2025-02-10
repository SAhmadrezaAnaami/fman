#!/bin/bash
# build.sh - Simple installer for fman

# You can change the installation prefix if needed.
INSTALL_PREFIX="/usr"

echo "Installing fman to ${INSTALL_PREFIX}/bin and docs to ${INSTALL_PREFIX}/share/fman/docs"

# Create directories if they do not exist.
sudo install -d "${INSTALL_PREFIX}/bin"
sudo install -d "${INSTALL_PREFIX}/share/fman/docs"

# Install the fman script.
sudo install -m 755 bin/fman "${INSTALL_PREFIX}/bin/fman"

# Copy the documentation.
sudo cp -r docs/* "${INSTALL_PREFIX}/share/fman/docs/"

echo "Installation complete. You can now run 'fman <topic>' to view a manual page."
