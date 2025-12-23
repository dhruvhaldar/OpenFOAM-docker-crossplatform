# Bolt's Journal

## 2024-05-22 - [Shell Script Optimization]
**Learning:** Checking `$SHELL` inside a shebang-defined script (`#!/bin/bash`) is often redundant and can lead to unnecessary process spawning (e.g., `fish -c`).
**Action:** Trust the interpreter defined in the shebang and use standard POSIX or shell-specific syntax for that interpreter. Avoid conditional execution based on the parent environment unless strictly necessary.
