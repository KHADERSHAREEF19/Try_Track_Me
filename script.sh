#!/bin/bash
# TryHackMe Profile Opener with Banner

# --- Main Script ---
# Show Banner
# Using echo -e to enable interpretation of backslash escapes for colors
echo -e "\e[32m" # Set color to Green
echo "=================================================================================================" 
echo "=================================================================================================" 
echo '  ████████╗██████╗ ██╗   ██╗    ████████╗██████╗  █████╗  ██████╗██╗  ██╗    ███╗   ███╗███████╗  '
echo '  ╚══██╔══╝██╔══██╗╚██╗ ██╔╝    ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝    ████╗ ████║██╔════╝  '
echo '     ██║   ██████╔╝ ╚████╔╝        ██║   ██████╔╝███████║██║     █████╔╝     ██╔████╔██║█████╗    '
echo '     ██║   ██╔══██╗  ╚██╔╝         ██║   ██╔══██╗██╔══██║██║     ██╔═██╗     ██║╚██╔╝██║██╔══╝    '
echo '     ██║   ██║  ██║   ██║          ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗    ██║ ╚═╝ ██║███████╗  '
echo '     ╚═╝   ╚═╝  ╚═╝   ╚═╝          ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝    ╚═╝     ╚═╝╚══════╝  '
echo "================================================================================================"
echo "================================================================================================" 
echo -e "\e[0m" # Reset color
echo ""
echo "==========================================================================================="
echo "                                   - Created by Galaxie -                                         "
echo "==========================================================================================="
echo ""

# Prompt for username
read -p "Enter username to search: " username

# Check if a username was entered
if [ -z "$username" ]; then
    echo "No username entered. Exiting."
    exit 1
fi

url="https://tryhackme.com/p/$username"

echo "🔎 Opening profile for '$username'..."

# Open in default browser (cross-platform)
# Use xdg-open for Linux, open for macOS
if command -v xdg-open &> /dev/null; then
  xdg-open "$url" >/dev/null 2>&1
elif command -v open &> /dev/null; then
  open "$url"
else
  echo "Could not detect a command to open the URL."
  echo "Please open this URL manually: $url"
fi

echo "✅ Done!"
