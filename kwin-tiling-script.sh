#!/usr/bin/env bash
git clone https://github.com/lingtjien/Grid-Tiling-Kwin ~/Grid-Tiling-Kwin
kpackagetool5 --type KWin/Script -i ~/Grid-Tiling-Kwin
mkdir -p ~/.local/share/kservices5
cd ~/.local/share/kservices5
ln -s ~/Grid-Tiling-Kwin/metadata.desktop kwin-script-grid-tiling.desktop



