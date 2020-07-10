#!/bin/bash
terraria_dir="$(dirname "$(dirname "$(realpath $0)")")"
repo_dir="$terraria_dir/terraria-server"
cd "$repo_dir"

git checkout .
git fetch origin
git reset --hard origin/master
"$repo_dir/load.sh"
