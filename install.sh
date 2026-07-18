#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${IRVA_SDLC_BASE_URL:-https://raw.githubusercontent.com/irvanariyanto/irva-sdlc/main}"
SKILLS=(
  irva-backend-engineer
  irva-database-engineer
  irva-devops-engineer
  irva-engineering-reviewer
  irva-frontend-engineer
  irva-incident-responder
  irva-product-analyst
  irva-release-manager
  irva-sdlc-bugfix
  irva-sdlc-code-review
  irva-sdlc-database-migration
  irva-sdlc-dependency-upgrade
  irva-sdlc-feature
  irva-sdlc-hotfix
  irva-sdlc-incident
  irva-sdlc-refactor
  irva-sdlc-release
  irva-sdlc-security-change
  irva-security-engineer
  irva-site-reliability-engineer
  irva-software-engineer
  irva-solution-architect
  irva-technical-writer
  irva-test-engineer
)

require_curl() {
  if ! command -v curl >/dev/null 2>&1; then
    echo "curl is required to install the skills." >&2
    exit 1
  fi
}

choose_target() {
  local tool scope

  echo "Choose a target tool:"
  echo "  1) Claude Code"
  echo "  2) Codex"
  echo "  3) Custom location"
  read -r -p "Selection [1-3]: " tool

  case "$tool" in
    1)
      echo "Install Claude Code skills to:"
      echo "  1) This project (.claude/skills)"
      echo "  2) Global ($HOME/.claude/skills)"
      read -r -p "Selection [1-2]: " scope
      case "$scope" in
        1) TARGET=".claude/skills" ;;
        2) TARGET="$HOME/.claude/skills" ;;
        *) echo "Invalid Claude Code target." >&2; exit 1 ;;
      esac
      ;;
    2)
      echo "Install Codex skills to:"
      echo "  1) This project (.codex/skills)"
      echo "  2) Global (${CODEX_HOME:-$HOME/.codex}/skills)"
      read -r -p "Selection [1-2]: " scope
      case "$scope" in
        1) TARGET=".codex/skills" ;;
        2) TARGET="${CODEX_HOME:-$HOME/.codex}/skills" ;;
        *) echo "Invalid Codex target." >&2; exit 1 ;;
      esac
      ;;
    3)
      read -r -p "Target directory: " TARGET
      if [[ -z "$TARGET" ]]; then
        echo "Target directory cannot be empty." >&2
        exit 1
      fi
      ;;
    *)
      echo "Invalid tool selection." >&2
      exit 1
      ;;
  esac
}

confirm_override() {
  local skill="$1" answer
  read -r -p "'$skill' already exists. Override its SKILL.md? [y/N]: " answer
  [[ "$answer" =~ ^[Yy]([Ee][Ss])?$ ]]
}

install_skill() {
  local skill="$1" destination="$TARGET/$skill" source temporary
  source="$BASE_URL/skills/$skill/SKILL.md"

  temporary="$(mktemp "${TMPDIR:-/tmp}/irva-sdlc-skill.XXXXXX")"
  if ! curl --fail --silent --show-error --location "$source" --output "$temporary"; then
    echo "Failed to download $skill from $source" >&2
    rm -f "$temporary"
    return 1
  fi

  if [[ -e "$destination" ]]; then
    if [[ ! -d "$destination" ]]; then
      echo "Cannot install $skill: $destination exists and is not a directory." >&2
      rm -f "$temporary"
      return 1
    fi
    if [[ -f "$destination/SKILL.md" ]] && cmp -s "$temporary" "$destination/SKILL.md"; then
      rm -f "$temporary"
      echo "Already up to date: $skill"
      return
    fi
    if ! confirm_override "$skill"; then
      echo "Skipped $skill"
      rm -f "$temporary"
      return
    fi
  fi

  mkdir -p "$destination"
  mv "$temporary" "$destination/SKILL.md"
  echo "Installed $skill"
}

main() {
  require_curl
  choose_target
  mkdir -p "$TARGET"

  echo "Installing skills to $TARGET"
  for skill in "${SKILLS[@]}"; do
    install_skill "$skill"
  done
}

main "$@"
