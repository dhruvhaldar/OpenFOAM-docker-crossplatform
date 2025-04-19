# 🚀 OpenFOAM Docker Image & My Favorite Testcases

Welcome to the OpenFOAM Docker setup! This repository provides a convenient way to run latest OpenFOAM testcases using Docker. The Docker images are available on [Docker Hub](https://hub.docker.com/u/haldardhruv).

## 🛠️ Quick Start

1. **Download and Run the Docker Image**  
   Use the `run_openfoam_vXX.sh` script to effortlessly download and run the Docker image. This script handles everything for you! 🎉

2. **Volume Mounting**  
   The `run_openfoam_vXX.sh` script also mounts this Git repository as a Docker volume inside the image, ensuring you have access to all necessary files and configurations. 📂

3. **Output Visualization**
   Works best with native version of [Paraview](https://www.paraview.org/download/). Remember ⚡ to make an empty file `open.foam` inside your testcase, which can then be opened in Paraview.

4. **Container support**
   If you plan on making changes to the image, you can create your own image from a running Docker container by `docker commit running_container_name new_image_name`. More details [here](https://docs.docker.com/reference/cli/docker/container/commit/).

## 📦 Docker Images

📦 OpenFOAMv2412 (By OpenCFD)
1. **Image Name**: `haldardhruv/ubuntu_noble_openfoam2412-dhruv`
2. **Platform**: [Ubuntu Noble](https://releases.ubuntu.com/noble/) with [OpenFOAM 2412](https://www.openfoam.com/news/main-news/openfoam-v2412)

📦 OpenFOAMv12 (Community Edition)
1. **Image Name**: `haldardhruv/ubuntu_noble_openfoam2412-dhruv`
2. **Platform**: [Ubuntu Noble](https://releases.ubuntu.com/noble/) with [OpenFOAM 12](https://openfoam.org/version/12/)

## Favorite Testcases (solution files available in this git repository)
### Fundamental flow 
1 `cavity`


## 📚 Additional Information

### Paraview 
Paraview (Software for post-processing) : https://www.paraview.org/download/
Check license at https://www.paraview.org/license/
A recent linux binary has been included in this repository, available at `Paraview/linux/5.13/`

#### 🛠️ Paraview Quick Start
1. Extract the archive in `Paraview/5.13/linux/`
2. Run `ParaView-5.13.3-MPI-Linux-Python3.10-x86_64/bin/paraview`

Troubleshooting for Ubuntu 24.04 ([Error : Could not load the Qt platform plugin] (https://discourse.paraview.org/t/unable-to-launch-paraview-could-not-load-the-qt-platform-plugin/7339/8)): `apt-get install libxcb-xinerama0 libxcb-xinput-dev`

### Contact
For more details on how to use this setup, check out the documentation in this repository. If you encounter any issues, feel free to open an issue or contribute to the project! 🤝

[☎️ Contact Me](https://dhruvhaldar.vercel.app/about)