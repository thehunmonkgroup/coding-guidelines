---
name: python-coding
description: Use when Codex needs to write, edit, refactor, review, or test Python code, Python scripts, .py files, CLI tools, or Python modules. Apply these rules for new Python code and when improving existing Python implementations, including typing, argparse usage, logging, structure, lint and type-check compliance, and pytest-based tests.
---

# Python Coding

Follow the Python rules in `references/python.md` as the source of truth.

## Workflow

1. Confirm the task is Python-specific.
2. Read `references/python.md` before writing or editing code.
3. Apply the rules consistently to new code and opportunistic refactors in touched areas.
4. Keep the implementation testable and use the required Python test library when adding tests.

## Non-Negotiable Rules

- Use modern Python 3.10+ syntax, type hints, and `from __future__ import annotations`.
- Prefer `argparse`, structured logging, `pathlib`, and `subprocess` when those concerns are relevant.
- Keep code modular, testable, and aligned with `basedpyright` and `flake8`.
- Use docstrings instead of introducing new inline comments unless the user explicitly asks otherwise.
