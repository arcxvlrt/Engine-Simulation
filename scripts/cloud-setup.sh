#!/bin/bash
# Cloud sessions start in a fresh container: install the CLI that the graphify skill and hooks call.
[ "$CLAUDE_CODE_REMOTE" = "true" ] || exit 0
command -v graphify >/dev/null || uv tool install "graphifyy==0.9.100" >/dev/null 2>&1
exit 0
