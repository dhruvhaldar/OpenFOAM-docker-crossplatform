# Get current working directory in Windows PowerShell
$CurrentDir = Get-Location

# Run OpenFOAM v12 Docker container with volume mapping
docker run --rm -it `
    --user foam `
    -v "${CurrentDir}:/foam/OpenFOAM/2412/work" `
    haldardhruv/ubuntu_noble_openfoam:v2412
