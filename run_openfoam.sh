#!/bin/bash

# Check if the shell is Fish
if [ "$SHELL" = "/usr/bin/fish" ] || [ "$SHELL" = "/bin/fish" ]; then
    # Fish shell syntax
    docker run -ti -v (pwd):/root/OpenFOAM/user-v2412/work haldardhruv/ubuntu_bionic_openfoam2412-dhruv
else
    # Default to Bash syntax
    docker run -ti -v $(pwd):/root/OpenFOAM/user-v2412/work haldardhruv/ubuntu_bionic_openfoam2412-dhruv
fi