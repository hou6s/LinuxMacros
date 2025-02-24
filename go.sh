#!/bin/bash

CONFIG_FILE="$HOME/.go_paths"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Shortcut file not found. Please add shortcuts using add_shortcut.sh"
    exit 1
fi

DEST=$(grep "^$1 " "$CONFIG_FILE" | cut -d ' ' -f2-)

if [ -z "$DEST" ]; then
    echo "Unknown location: $1"
    exit 1
fi

cd "$DEST" || exit
exec $SHELL  # Start a new shell in the new directory
