#!/bin/bash

# content/posts/ 直下の各ディレクトリに対してループ
for dir in content/posts/*; do
  # ディレクトリ内の index.md が存在するか確認
  if [[ -f "$dir/index.md" ]]; then
    # tcardgen コマンドの実行
    tcardgen -c tcardgen/config.yaml -f tcardgen/font "$dir/index.md" -o "$dir/featured.png"
  fi
done
