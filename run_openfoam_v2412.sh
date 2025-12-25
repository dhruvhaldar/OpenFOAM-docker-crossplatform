#!/bin/bash

# Execute the Docker command using standard Bash syntax
# This works regardless of the user's login shell because the script runs in Bash.
# Security enhancement: --security-opt=no-new-privileges prevents privilege escalation
docker run --rm -ti --security-opt=no-new-privileges --user foam -v "$PWD":/foam/OpenFOAM/2412/work haldardhruv/ubuntu_noble_openfoam:v2412
