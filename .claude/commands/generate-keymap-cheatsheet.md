以下の手順でNeovimキーマップチートシートを生成してください。

1. `data/nvim/keymaps.txt` と `data/nvim/commands.txt` を読み込む
   - ファイルがない場合は `scripts/export-nvim-keymaps.sh` を実行して生成する

2. `data/nvim/keymap-template.md` のテンプレートに従い、読み込んだデータを分類・整理する

3. 整理のルール:
   - モードは n=Normal, x=Visual, o=Operator-pending, s=Select, i=Insert, v=Visual+Select で略記する
   - `<Space>` から始まるキーはLeaderキーマップとして対応するカテゴリに分類する
   - `<Plug>` や `<SNR>` で始まる内部マッピングは除外する
   - 同じ機能で複数モードに割り当てられているものは1行にまとめてモード列に併記する
   - 説明はNeovimの出力をそのまま使い、必要に応じて日本語で補足する

4. 結果を `data/nvim/keymap-cheatsheet.md` に書き出す
