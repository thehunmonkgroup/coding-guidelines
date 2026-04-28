#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SOURCE_SKILLS_DIR="${REPO_ROOT}/skills"
DEFAULT_TARGET="${HOME}/.agents/skills"
TARGET_DIR="${DEFAULT_TARGET}"

usage() {
  cat <<'EOF'
Usage: install-skills.sh [--local | --target DIR]

Sync repo-managed skills into an Agents skills directory and refresh source-of-truth
reference symlinks back to bash.md and python.md.

Defaults to the global user skills directory:
  ${HOME}/.agents/skills

For project-level installation in the current working directory:
  install-skills.sh --local

For project-level installation in another repo, target a repo-local skills directory:
  .agents/skills
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -l|--local)
      TARGET_DIR="${PWD}/.agents/skills"
      shift
      ;;
    --target)
      if [[ $# -lt 2 ]]; then
        echo "Missing value for --target" >&2
        exit 64
      fi
      TARGET_DIR="$2"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 64
      ;;
  esac
done

install_skill() {
  local skill_name="$1"
  local source_reference="$2"
  local reference_name
  local destination_dir
  local destination_reference_dir
  local destination_reference_path

  reference_name="$(basename "${source_reference}")"
  destination_dir="${TARGET_DIR}/${skill_name}"
  destination_reference_dir="${destination_dir}/references"
  destination_reference_path="${destination_reference_dir}/${reference_name}"

  mkdir -p "${TARGET_DIR}"
  rm -rf "${destination_dir}"
  cp -R "${SOURCE_SKILLS_DIR}/${skill_name}" "${destination_dir}"
  mkdir -p "${destination_reference_dir}"
  ln -sfn "${source_reference}" "${destination_reference_path}"

  echo "Synced ${skill_name} -> ${destination_dir}"
  echo "Linked ${destination_reference_path} -> ${source_reference}"
}

install_skill "bash-coding" "${REPO_ROOT}/bash.md"
install_skill "python-coding" "${REPO_ROOT}/python.md"
