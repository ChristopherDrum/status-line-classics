#!/bin/bash

# Ensure the script is called with an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <GAME>"
    exit 1
fi

# Argument passed to the script
GAME="$1"

# Create the build directory
mkdir -p build

# Delete matching files in the build directory
find ./build -name "*.zap" -delete
find ./build -name "*.xzap" -delete
find ./build -name "${GAME}.z*" -delete

# Run zilf and zapf commands
zilf -w "./${GAME}/${GAME}.zil" "./build/${GAME}.zap"
zapf -ab "./build/${GAME}.zap" > "./build/${GAME}_freq.xzap" && rm -f "./build/${GAME}_freq.zap"
zapf "./build/${GAME}.zap"