#!/usr/bin/env bash

set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="sk"

echo "Installing sk..."

# Check if running as root for /usr/local/bin
if [ "$INSTALL_DIR" = "/usr/local/bin" ] && [ "$(id -u)" -ne 0 ]; then
    echo "This script requires sudo to install to $INSTALL_DIR"
    echo "Please run: curl -sSL https://raw.githubusercontent.com/skbasava/sk-shell/refs/heads/main/install.sh | sudo sh"
    exit 1
fi

# Download the script
curl -sSL https://raw.githubusercontent.com/skbasava/sk-shell/refs/heads/main/sk.sh -o "$INSTALL_DIR/$SCRIPT_NAME"

# Make it executable
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

echo "✓ sk installed successfully to $INSTALL_DIR/$SCRIPT_NAME"
echo ""
echo "Set your API key:"
echo "  export GROQ_API_KEY=\"your-key\"     # or"
echo ""
echo "Usage: sk <instruction>"
