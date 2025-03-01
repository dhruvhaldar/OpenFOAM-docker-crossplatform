#!/bin/bash

# Check if the shell is Fish
if [ "$SHELL" = "/usr/bin/fish" ] || [ "$SHELL" = "/bin/fish" ]; then
    # Execute the Fish command using Fish shell
    fish -c 'docker run -ti -v (pwd):/root/OpenFOAM/user-v2412/work haldardhruv/ubuntu_noble_openfoamv12-dhruv'
# Check if the shell is Zsh
elif [ "$SHELL" = "/usr/bin/zsh" ] || [ "$SHELL" = "/bin/zsh" ]; then
    # Execute the command using Zsh syntax (same as Bash in this case)
    docker run -ti -v $(pwd):/root/OpenFOAM/user-v2412/work haldardhruv/ubuntu_noble_openfoamv12-dhruv
else
    # Default to Bash syntax
    docker run -ti -v $(pwd):/root/OpenFOAM/user-v2412/work haldardhruv/ubuntu_noble_openfoamv12-dhruv
fi
