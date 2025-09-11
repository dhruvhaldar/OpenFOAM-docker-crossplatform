# 🚀 Easily run OpenFOAM testcases using Docker

Welcome to the OpenFOAM Docker setup! This repository provides a convenient way to run latest OpenFOAM testcases using Docker. The Docker images are available on [Docker Hub](https://hub.docker.com/u/haldardhruv).

---

## Before you start
1. Docker should be installed on your system and accessible from command line (run `docker --version` to check). For Windows, follow the instructions [here](https://docs.docker.com/desktop/setup/install/windows-install/).

2. For Linux, install Docker Engine, instructions available [here](https://docs.docker.com/engine/install/) based on your Linux distribution. For Ubuntu, follow the instructions [here](https://docs.docker.com/engine/install/ubuntu/). 

## 🛠️ Quick Start

<details>
  <summary>🟦 Windows Instructions</summary>

1. **Download and Run the Docker Image**  
   Use the `run_openfoam_v12.ps1` script to effortlessly download and run the Docker image. This script handles everything for you! 🎉

2. **Volume Mounting**  
   The `run_openfoam_v12.ps1` script also mounts this Git repository as a Docker volume inside the image, ensuring you have access to all necessary files and configurations. 📂

3. **Output Visualization**  
   Works best with native version of [Paraview](https://www.paraview.org/download/).  
   Remember ⚡ to make an empty file `open.foam` inside your testcase, which can then be opened in Paraview.

4. **Container Support**  
   If you plan on making changes to the image, you can create your own image from a running Docker container by  
   ```powershell
   docker commit running_container_name new_image_name
   ```
   More details [here](https://docs.docker.com/reference/cli/docker/container/commit/).

</details>

<details>
  <summary>🟦 Linux Instructions</summary>

1. **Download and Run the Docker Image**  
   Use the `run_openfoam_v12.sh` script to effortlessly download and run the Docker image. This script handles everything for you! 🎉

2. **Volume Mounting**  
   The `run_openfoam_v12.sh` script also mounts this Git repository as a Docker volume inside the image, ensuring you have access to all necessary files and configurations. 📂

3. **Output Visualization**
   Works best with native version of [Paraview](https://www.paraview.org/download/). Remember ⚡ to make an empty file `open.foam` inside your testcase, which can then be opened in Paraview.

4. **Container support**
   If you plan on making changes to the image, you can create your own image from a running Docker container by 
   ```bash
   docker commit running_container_name new_image_name
   ```
   More details [here](https://docs.docker.com/reference/cli/docker/container/commit/).

</details>

## 📦 Docker Images

📦 OpenFOAMv2412 (By OpenCFD)
1. **Image Name**: `haldardhruv/ubuntu_noble_openfoam:v2412`
2. **Platform**: [Ubuntu Noble](https://releases.ubuntu.com/noble/) with [OpenFOAM 2412](https://www.openfoam.com/news/main-news/openfoam-v2412)

📦 OpenFOAMv12 (Community Edition)
1. **Image Name**: `haldardhruv/ubuntu_noble_openfoam:v12`
2. **Platform**: [Ubuntu Noble](https://releases.ubuntu.com/noble/) with [OpenFOAM 12](https://openfoam.org/version/12/)

## Favorite Testcases (solution files available at `OpenFOAM_v12_cases/` and `OpenFOAM_v2412_cases/`)
### Fundamental flow 
1. Simulation of Lid-driven Cavity Flow : `pimpleFoam/cavity` simulates the flow of a viscous, incompressible fluid within a square or rectangular cavity.
2. Simulation of Motorbike Flow : `simpleFoam/motorBike` simulates the flow of a viscous, incompressible fluid within a motorbike.

## 📚 Additional Information

### Paraview 
1. Paraview (Software for post-processing) : https://www.paraview.org/download/
2. A recent linux binary has been included in this repository, available at `Paraview/linux/5.13/`
3. [License](https://www.paraview.org/license/)

#### 🛠️ Paraview Quick Start
1. Extract the archive in `Paraview/5.13/linux/`
2. Run `ParaView-5.13.3-MPI-Linux-Python3.10-x86_64/bin/paraview`

Troubleshooting for Ubuntu 24.04 ([Error : Could not load the Qt platform plugin](https://discourse.paraview.org/t/unable-to-launch-paraview-could-not-load-the-qt-platform-plugin/7339/8)): `apt-get install libxcb-xinerama0 libxcb-xinput-dev`

### Contact
For more details on how to use this setup, check out the documentation in this repository. If you encounter any issues, feel free to open an issue or contribute to the project! 🤝

[☎️ Contact Me](https://dhruvhaldar.vercel.app/about)
