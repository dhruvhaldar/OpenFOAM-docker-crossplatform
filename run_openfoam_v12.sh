#!/bin/bash

# Run OpenFOAM v12 container
# Mounts the current directory to /foam/OpenFOAM/12/work
docker run --rm -ti --user foam -v "$PWD":/foam/OpenFOAM/12/work haldardhruv/ubuntu_noble_openfoam:v12
