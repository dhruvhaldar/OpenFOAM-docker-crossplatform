## 2024-05-23 - [Critical Privilege Escalation in Docker]
**Vulnerability:** The Dockerfiles granted `NOPASSWD:ALL` sudo access to the unprivileged `foam` user.
**Learning:** Convenience features in development containers (like easy package installation) often bypass critical security boundaries. This allowed any process running as `foam` to easily escalate to root, compromising the container integrity and potentially the host via mounted volumes.
**Prevention:** Remove `sudo` access and the `sudo` package from containers intended for execution. Require administrative tasks (like package installation) to be performed via `docker exec -u 0` or by modifying the Dockerfile (Infrastructure as Code).
