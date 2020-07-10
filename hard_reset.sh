#!/bin/bash
git checkout .
git fetch origin
git reset --hard origin/master
terraria_dir="$(dirname "$(dirname "$(realpath $0)")")"
"$terraria_dir/terraria-server/load.sh"
