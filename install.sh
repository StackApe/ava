#!/bin/bash
# Ava Installer - ApX Virtual Assistant

set -e

echo "Installing Ava - ApX Virtual Assistant"
echo "======================================="

# Check for ollama
if ! command -v ollama &> /dev/null; then
    echo "Error: Ollama is not installed."
    echo "Install it from: https://ollama.com"
    exit 1
fi

# Create temp directory
TMPDIR=$(mktemp -d)
cd "$TMPDIR"

echo "Downloading Ava model (8.5GB)..."
wget -q --show-progress https://huggingface.co/Vizohugz/ava-gguf/resolve/main/ava-q8.gguf

echo "Downloading Modelfile..."
wget -q https://raw.githubusercontent.com/StackApe/ava/main/Modelfile

echo "Importing to Ollama..."
ollama create ava -f Modelfile

# Cleanup
cd -
rm -rf "$TMPDIR"

echo ""
echo "Ava installed successfully!"
echo "Run with: ollama run ava"
