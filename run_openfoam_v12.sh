#!/bin/bash

# Execute the Docker command using standard Bash syntax
# This works regardless of the user's login shell because the script runs in Bash.
docker run --rm -ti --user foam -v "$PWD":/foam/OpenFOAM/12/work haldardhruv/ubuntu_noble_openfoam:v12
