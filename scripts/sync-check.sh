#!/bin/bash
# dotfiles と ~/.config の差分を確認するスクリプト
# リポジトリにあるファイルのみを対象にチェックする（一方向）

CONFIGS_DIR="$(cd "$(dirname "$0")/../configs" && pwd)"
CONFIG_DIR="$HOME/.config"

has_diff=0

while IFS= read -r -d '' file; do
  rel="${file#"$CONFIGS_DIR"/}"
  target="$CONFIG_DIR/$rel"

  if [ ! -e "$target" ]; then
    echo "MISSING: ~/.config/$rel"
    has_diff=1
  elif ! diff -q "$file" "$target" > /dev/null 2>&1; then
    echo "DIFF:    ~/.config/$rel"
    diff --color=auto -u "$file" "$target" | head -20
    echo ""
    has_diff=1
  fi
done < <(find "$CONFIGS_DIR" -type f \
  ! -name '.DS_Store' \
  -print0)

if [ "$has_diff" -eq 0 ]; then
  echo "OK: すべてのファイルが ~/.config と一致しています"
fi
