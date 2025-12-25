# Bolt's Journal

## 2024-05-22 - [Shell Script Optimization]
**Learning:** Checking `$SHELL` inside a shebang-defined script (`#!/bin/bash`) is often redundant and can lead to unnecessary process spawning (e.g., `fish -c`).
**Action:** Trust the interpreter defined in the shebang and use standard POSIX or shell-specific syntax for that interpreter. Avoid conditional execution based on the parent environment unless strictly necessary.

## 2024-12-24 - [Shell Micro-optimizations]
**Learning:** In Bash scripts, `$(pwd)` spawns a subshell and executes a binary, whereas `$PWD` is a builtin variable look-up. Also, `cut` spawns a process, while `read` is a builtin.
**Action:** Prefer shell builtins (`$PWD`, `read`) over spawning external processes (`pwd`, `cut`) for simple tasks, especially in hot paths or startup scripts.

## 2025-12-25 - [Bash Native Date and Banner]
**Learning:** Using `cat` to print static text spawns a process, as does `date` for timestamps. Bash 4.2+ `printf` supports time formatting (`%(...)T`) and large strings (`printf '%s' ...`), avoiding these forks.
**Action:** Use `printf` for banners and timestamps in performance-sensitive scripts like `.bashrc`.
