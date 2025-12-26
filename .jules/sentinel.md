## 2024-05-23 - [Critical Privilege Escalation in Docker]
**Vulnerability:** The Dockerfiles granted `NOPASSWD:ALL` sudo access to the unprivileged `foam` user.
**Learning:** Convenience features in development containers (like easy package installation) often bypass critical security boundaries. This allowed any process running as `foam` to easily escalate to root, compromising the container integrity and potentially the host via mounted volumes.
**Prevention:** Remove `sudo` access and the `sudo` package from containers intended for execution. Require administrative tasks (like package installation) to be performed via `docker exec -u 0` or by modifying the Dockerfile (Infrastructure as Code).

## 2025-12-26 - [Insecure Pipe-to-Bash Installation]
**Vulnerability:** The Dockerfile used `curl | bash` to install OpenFOAM repositories. This pattern executes arbitrary remote code without verification, exposing the build process to supply chain attacks or MITM.
**Learning:** Vendor-provided installation scripts are often optimized for convenience over security.
**Prevention:** Always inspect installation scripts and replicate their logic explicitly in the Dockerfile (Infrastructure as Code), verifying GPG keys and repository URLs directly.
