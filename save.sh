#!/bin/bash
terraria_dir="$(dirname "$(dirname "$(realpath $0)")")"
world_file_path=`find "$terraria_dir/terraria-server" -type f -name "*.wld"`
world_filename=`basename "$world_file_path"`
cp "$terraria_dir/Worlds/$world_filename" "$terraria_dir/terraria-server"
git add -A
git commit -m 'Update world file'
git push origin master