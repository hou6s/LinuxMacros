#!/bin/bash

CONFIG_FILE="$HOME/.go_paths"

# Create the config file if it doesn't exist
if [ ! -f "$CONFIG_FILE" ]; then
    touch "$CONFIG_FILE"
fi

echo "Enter the shortcut key (e.g., 'Patata'): "
read -r KEY

echo "Enter the full path for '$KEY': "
read -r PATH

# Ensure the path exists
if [ ! -d "$PATH" ]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

# Check if the shortcut already exists
if /bin/grep -q "^$KEY " "$CONFIG_FILE"; then
    echo "Error: Shortcut '$KEY' already exists! Please use a different key."
    exit 1
fi

# Append the new shortcut to the config file
echo "$KEY $PATH" >> "$CONFIG_FILE"

echo "Shortcut '$KEY' -> '$PATH' added successfully!"
