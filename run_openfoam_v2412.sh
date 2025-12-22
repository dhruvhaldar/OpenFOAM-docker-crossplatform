#!/bin/bash

# Run OpenFOAM v2412 container
# Mounts the current directory to /foam/OpenFOAM/2412/work
docker run --rm -ti --user foam -v "$PWD":/foam/OpenFOAM/2412/work haldardhruv/ubuntu_noble_openfoam:v2412
