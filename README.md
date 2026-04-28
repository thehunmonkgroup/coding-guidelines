# Coding Guidelines

Reusable coding guidelines and Agent skills for Bash and Python.

This repo keeps the human-edited rules in top-level markdown files and syncs installable Agent skills from `skills/` into a local skills directory.

## Quickstart

```bash
git clone <repo-url>
cd coding-guidelines
./scripts/install-skills.sh
```

This installs:

- `bash-coding`
- `python-coding`

By default the skills are synced to the global user skills directory:

```bash
${HOME}/.agents/skills
```

To install into `.agents/skills` in the current working directory:

```bash
/path/to/scripts/install-skills.sh --local
```

Short form:

```bash
/path/to/scripts/install-skills.sh -l
```

To install into a custom directory:

```bash
./scripts/install-skills.sh --target /path/to/.agents/skills
```

## Edit Flow

If you want to change the actual guidance:

- Edit `bash.md` for Bash rules
- Edit `python.md` for Python rules
- Re-run `./scripts/install-skills.sh`

The installed skills read those files through symlinks in each skill's `references/` directory.

## Repo Layout

- `bash.md`: source-of-truth Bash guidance
- `python.md`: source-of-truth Python guidance
- `skills/`: Agent skill wrappers
- `scripts/install-skills.sh`: sync installer
- `comments.md`, `logging.md`, `testing-requirements.md`: supporting guidance drafts and reference material

## Notes

This repo is intentionally lightweight. The README is a quickstart, not the full guideline set; the detailed rules live in the markdown files themselves.
