## 2024-05-23 - [Critical Privilege Escalation in Docker]
**Vulnerability:** The Dockerfiles granted `NOPASSWD:ALL` sudo access to the unprivileged `foam` user.
**Learning:** Convenience features in development containers (like easy package installation) often bypass critical security boundaries. This allowed any process running as `foam` to easily escalate to root, compromising the container integrity and potentially the host via mounted volumes.
**Prevention:** Remove `sudo` access and the `sudo` package from containers intended for execution. Require administrative tasks (like package installation) to be performed via `docker exec -u 0` or by modifying the Dockerfile (Infrastructure as Code).

## 2025-12-27 - [Insecure Remote Script Execution]
**Vulnerability:** The Dockerfile used `curl | bash` to install the repository configuration. This bypasses package manager verification and allows execution of arbitrary code if the remote server or connection is compromised.
**Learning:** Piping web content directly to a shell is a common but dangerous pattern that makes the build process dependent on the real-time integrity of an external script.
**Prevention:** Download GPG keys and configuration files explicitly. Verify keys with `gpg` and write repository lists to defined locations (`/etc/apt/sources.list.d/`) manually, ensuring the build process is deterministic and verifiable.

## 2025-12-27 - [Unused Build Dependencies]
**Vulnerability:** The Dockerfile installed `software-properties-common` (providing `add-apt-repository`) but used manual file operations to configure repositories.
**Learning:** Copy-pasting package lists often leads to bloated images with unused tools that increase the attack surface by pulling in unnecessary dependencies (e.g., Python).
**Prevention:** Audit package lists and prune them to the minimum required for the build and runtime environment.

## 2025-12-27 - [Attack Surface Reduction]
**Vulnerability:** The Dockerfiles installed `neofetch` and `wget`, which were unnecessary for the container's primary function.
**Learning:** Including "convenience" tools like system information fetchers (`neofetch`) or redundant downloaders (`wget` when `curl` is present) increases the container size and provides attackers with more tools ("Living off the Land") if the container is compromised.
**Prevention:** Regularly audit installed packages and remove anything not strictly required for the application to run.
