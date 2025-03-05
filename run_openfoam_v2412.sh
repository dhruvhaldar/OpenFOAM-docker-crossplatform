#!/bin/bash

# Check if the shell is Fish
if [ "$SHELL" = "/usr/bin/fish" ] || [ "$SHELL" = "/bin/fish" ]; then
    # Execute the Fish command using Fish shell
    fish -c 'docker run --rm -ti --user foam -v (pwd):/foam/OpenFOAM/2412/work haldardhruv/ubuntu_noble_openfoam:v2412'
# Check if the shell is Zsh
elif [ "$SHELL" = "/usr/bin/zsh" ] || [ "$SHELL" = "/bin/zsh" ]; then
    # Execute the command using Zsh syntax (same as Bash in this case)
    docker run --rm -ti --user foam -v $(pwd):/foam/OpenFOAM/2412/work haldardhruv/ubuntu_noble_openfoam:v2412
else
    # Default to Bash syntax
    docker run --rm -ti --user foam -v $(pwd):/foam/OpenFOAM/2412/work haldardhruv/ubuntu_noble_openfoam:v2412
fi
