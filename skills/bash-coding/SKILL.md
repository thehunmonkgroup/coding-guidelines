---
name: bash-coding
description: Use when Codex needs to write, edit, refactor, review, or test Bash code, shell scripts, .sh files, shell snippets, or CLI automation in Bash. Apply these rules for new Bash code and when improving existing Bash implementations, including argument parsing, logging, testability, and Bash-focused tests.
---

# Bash Coding

Follow the Bash rules in `references/bash.md` as the source of truth.

## Workflow

1. Confirm the task is Bash-specific.
2. Read `references/bash.md` before writing or editing code.
3. Apply the rules consistently to new code and opportunistic refactors in touched areas.
4. Keep the implementation testable and use the required Bash test library when adding tests.

## Non-Negotiable Rules

- Prefer `getopts` for command-line argument parsing when parsing is needed.
- Use detailed logging and meaningful exit codes.
- Use clear names, top-level constants/defaults, and small focused functions.
- Wrap variable references as `${name}`.
- Avoid comments in newly written code unless the user explicitly asks for them.
