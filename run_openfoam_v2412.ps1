# Get current working directory in Windows PowerShell
$CurrentDir = Get-Location

# Run OpenFOAM v2412 Docker container with volume mapping
# Security enhancement: --security-opt=no-new-privileges prevents privilege escalation
docker run --rm -it `
    --security-opt=no-new-privileges `
    --user foam `
    -v "${CurrentDir}:/foam/OpenFOAM/2412/work" `
    haldardhruv/ubuntu_noble_openfoam:v2412
