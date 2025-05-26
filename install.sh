#!/bin/bash

# Epicman Installer Script

clear

# ASCII Art
echo -e "\e[1;36m"
cat << "EOF"
 _____       _                            
| ____|_ __ (_) ___ _ __ ___   __ _ _ __  
|  _| | '_ \| |/ __| '_ ` _ \ / _` | '_ \ 
| |___| |_) | | (__| | | | | | (_| | | | |
|_____| .__/|_|\___|_| |_| |_|\__,_|_| |_|
      |_|                                 
           Installer
EOF
echo -e "\e[0m"

COMMAND_FILE="tools-list.sh"

if [[ ! -f "$COMMAND_FILE" ]]; then
    echo -e "\e[1;31mCommand file '$COMMAND_FILE' not found!\e[0m"
    exit 1
fi

sh $COMMAND_FILE

echo -e "\n\e[1;32mAll tools installed successfully!\e[0m"
echo -e "\n\e[1;33mStay Epic, Epicman 😎\e[0m"

