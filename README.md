# 🚀 OpenFOAM Docker Image & Testcases

Welcome to the OpenFOAM Docker setup! This repository provides a convenient way to run latest OpenFOAM testcases using Docker. The Docker image is available on [Docker Hub](https://hub.docker.com/repository/docker/haldardhruv/ubuntu_bionic_openfoam2412-dhruv/).

## 🛠️ Quick Start

1. **Download and Run the Docker Image**  
   Use the `run_openfoam.sh` script to effortlessly download and run the Docker image. This script handles everything for you! 🎉

2. **Volume Mounting**  
   The `run_openfoam.sh` script also mounts this Git repository as a Docker volume inside the image, ensuring you have access to all necessary files and configurations. 📂

3. **Output Visualization**
   Works best with native version of [Paraview](https://www.paraview.org/download/). Remember ⚡ to make an empty file `open.foam` inside your testcase, which can then be opened in Paraview.

4. **Container support**
   If you plan on making changes to the image, you can create your own image from a running Docker container by `docker commit running_container_name new_image_name`. More details [here](https://docs.docker.com/reference/cli/docker/container/commit/).

## 📦 Docker Image Details

1. **Image Name**: `haldardhruv/ubuntu_bionic_openfoam2412-dhruv`
2. **Platform**: Ubuntu Bionic with [OpenFOAM 2412](https://www.openfoam.com/news/main-news/openfoam-v2412)

## 📚 Additional Information

For more details on how to use this setup, check out the documentation in this repository. If you encounter any issues, feel free to open an issue or contribute to the project! 🤝