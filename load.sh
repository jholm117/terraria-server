#!/bin/bash
terraria_dir="$(dirname "$(dirname "$(realpath "$0")")")"
repo_dir="$terraria_dir/terraria-server"
cd "$repo_dir"
git pull --ff-only
world_file=`find "$repo_dir" -type f -name "*.wld"` 

cp "$world_file" "$terraria_dir/Worlds"