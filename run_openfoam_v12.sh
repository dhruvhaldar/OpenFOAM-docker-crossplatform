#!/bin/bash

# Execute the command using standard Bash syntax (compatible with most shells when running as a script)
# Optimized: Removed unnecessary subshell invocations (fish -c) and shell detection.
docker run --rm -ti --user foam -v "$(pwd)":/foam/OpenFOAM/12/work haldardhruv/ubuntu_noble_openfoam:v12
