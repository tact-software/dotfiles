#!/bin/bash
# Neovimのキーマップとコマンドをファイルに出力する
# 使い方: ./scripts/export-nvim-keymaps.sh [出力先ディレクトリ]

set -euo pipefail

OUTDIR="${1:-data/nvim}"

nvim --headless -c "lua require('lazy').load({plugins = require('lazy').plugins()})" \
  -c "redir! > ${OUTDIR}/keymaps.txt | silent map | redir END" \
  -c "redir! > ${OUTDIR}/commands.txt | silent command | redir END" \
  -c "qa"

echo "Exported to:"
echo "  ${OUTDIR}/keymaps.txt"
echo "  ${OUTDIR}/commands.txt"
