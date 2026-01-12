#!/bin/bash
# Serve Ava Chat UI
# Usage: ./serve.sh [port]

PORT=${1:-8080}
DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Ava Chat UI running at:"
echo "  Local:     http://localhost:$PORT"
echo "  Network:   http://$(hostname -I | awk '{print $1}'):$PORT"
echo ""
echo "Press Ctrl+C to stop"

cd "$DIR"
python3 -m http.server "$PORT" --bind 0.0.0.0
