# Start from the official Ubuntu Noble (24.04 LTS) image
FROM ubuntu:noble

# Install any extra things we might need
RUN apt-get update \
    && apt-get install -y \
        neovim \
        openssh-client \
        rsync \
        curl \
        gnupg \
    && rm -rf /var/lib/apt/lists/*

# Create a new user called foam
RUN useradd --user-group --create-home --shell /bin/bash foam

# Install OpenFOAM v2412
RUN curl -fsSL https://dl.openfoam.com/pubkey.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/openfoam.gpg \
    && echo "deb [arch=$(dpkg --print-architecture)] https://dl.openfoam.com/repos/deb noble main" > /etc/apt/sources.list.d/openfoam.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends openfoam2412-default \
    && rm -rf /var/lib/apt/lists/* \
    && echo "source /usr/lib/openfoam/openfoam2412/etc/bashrc" >> /home/foam/.bashrc \
    && echo "export OMPI_MCA_btl_vader_single_copy_mechanism=none" >> /home/foam/.bashrc

# Add custom aliases to the foam user's .bashrc
RUN printf "alias e='exit'\nalias l='ls -lah'\nalias c='clear'\ncd /foam/OpenFOAM/2412/work/OpenFOAM_v2412_cases\n" >> /home/foam/.bashrc

# Set the default container user to foam
USER foam

# Set the working directory
WORKDIR /home/foam

# Default command to run when starting the container
CMD ["bash"]