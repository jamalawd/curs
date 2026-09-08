#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
PREFIX="${PREFIX:-$HOME/.local}"
DEST="$PREFIX/bin/curs"

if [[ ! -x "$ROOT/bin/curs" ]]; then
  echo "install.sh: missing executable $ROOT/bin/curs" >&2
  exit 1
fi

mkdir -p "$PREFIX/bin"
ln -sfn "$ROOT/bin/curs" "$DEST"
echo "Installed $DEST -> $ROOT/bin/curs"

case ":$PATH:" in
  *":$PREFIX/bin:"*) ;;
  *)
    echo "Add $PREFIX/bin to PATH if new shells cannot find curs."
    ;;
esac
