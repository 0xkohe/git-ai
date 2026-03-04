#!/bin/bash

set -e

SCRIPT_DIR="$(cd ""$(dirname "${BASH_SOURCE[0]}" )"" && pwd)"

echo "Installing git-ai..."
sudo cp "$SCRIPT_DIR/git-ai" /usr/local/bin/git-ai
sudo chmod +x /usr/local/bin/git-ai

echo "Registering git alias..."
git config --global alias.ai '!git-ai'

echo ""
echo "Done! You can now use:"
echo "  git ai commit           # Use Claude (default)"
echo "  git ai commit copilot   # Use GitHub Copilot CLI"
echo "  git ai commit codex     # Use OpenAI Codex CLI"