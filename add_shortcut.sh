#!/bin/bash

CONFIG_FILE="$HOME/.go_paths"

# Create the config file if it doesn't exist
if [ ! -f "$CONFIG_FILE" ]; then
    touch "$CONFIG_FILE"
fi

echo "Enter the shortcut key (e.g., 'Patata'): "
read -r KEY

echo "Enter the full path for '$KEY': For the current path enter: ."
read -r PATH

# Expand '.' to the absolute current directory
if [ "$PATH" = "." ]; then
    PATH=$(pwd)
fi

# Ensure the path exists
if [ ! -d "$PATH" ]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

# Check if the shortcut already exists
if /bin/grep -q "^$KEY " "$CONFIG_FILE"; then
    echo -e "Shortcut '$KEY' already exists!!!!! \n Do you want to replace it? (y/n)"
    read -r OPTION
    if [[ "$OPTION" != "y" && "$OPTION" != "Y" ]]; then
        echo "Shortcut was not replaced."
        exit 1
    fi
    # Remove the existing shortcut
    /bin/sed -i "/^$KEY /d" "$CONFIG_FILE"
fi

# Append the new shortcut to the config file
echo "$KEY $PATH" >> "$CONFIG_FILE"

echo "Shortcut '$KEY' -> '$PATH' added successfully!"

