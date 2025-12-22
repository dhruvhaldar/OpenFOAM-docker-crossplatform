## 2024-05-24 - Unquoted Path Variable Vulnerability
**Vulnerability:** Shell scripts used unquoted `$(pwd)` in Docker volume mounts.
**Learning:** In Bash/Zsh, command substitution `$(...)` undergoes word splitting if unquoted. This causes commands to fail or behave unexpectedly (e.g., passing parts of the path as separate arguments) if the current directory path contains spaces.
**Prevention:** Always quote path variables and command substitutions that evaluate to paths: `"${PWD}"` or `"$(pwd)"`.
