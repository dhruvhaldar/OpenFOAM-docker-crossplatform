## 2024-05-23 - [Shell script shell detection anti-pattern]
**Learning:** Checking $SHELL inside a script with a fixed shebang (e.g. #!/bin/bash) is redundant and can lead to unnecessary subprocess spawning (like `fish -c`). The script interpreter is already decided by the shebang.
**Action:** Use standard POSIX/Bash syntax directly in the script (e.g. "$PWD") instead of trying to adapt to the user's login shell.
