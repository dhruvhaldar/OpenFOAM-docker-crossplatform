# Start from the official Ubuntu Noble (24.04 LTS) image
FROM ubuntu:noble

# Install any extra things we might need
RUN apt-get update \
    && apt-get install -y \
        neovim \
        ssh \
        sudo \
        neofetch \
        wget \
        curl \
        software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# Create a new user called foam
RUN useradd --user-group --create-home --shell /bin/bash foam \
    && echo "foam ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Install OpenFOAM v2412
RUN curl -s https://dl.openfoam.com/add-debian-repo.sh | bash \
    && apt-get update \
    && apt-get install -y --no-install-recommends openfoam2412-default \
    && rm -rf /var/lib/apt/lists/* \
    && echo "source /usr/lib/openfoam/openfoam2412/etc/bashrc" >> /home/foam/.bashrc \
    && echo "export OMPI_MCA_btl_vader_single_copy_mechanism=none" >> /home/foam/.bashrc

# Add custom aliases to the foam user's .bashrc
RUN echo "alias e='exit'" >> /home/foam/.bashrc \
    && echo "alias l='ls -lah'" >> /home/foam/.bashrc \
    && echo "alias c='clear'" >> /home/foam/.bashrc \
    && echo "cd /foam/OpenFOAM/2412/work/OpenFOAM_v2412_cases" >> /home/foam/.bashrc

# Set the default container user to foam
USER foam

# Set the working directory
WORKDIR /home/foam

# Default command to run when starting the container
CMD ["bash"]