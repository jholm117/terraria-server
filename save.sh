#!/bin/bash
terraria_dir="$(dirname "$(dirname "$(realpath $0)")")"
repo_dir="$terraria_dir/terraria-server"
cd "$repo_dir"

world_file_path=`find "$repo_dir" -type f -name "*.wld"`
world_filename=`basename "$world_file_path"`
cp "$terraria_dir/Worlds/$world_filename" "$repo_dir"
git add -A
git commit -m 'Update world file'
git push origin master