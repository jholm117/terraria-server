#!/bin/bash
git pull --ff-only
terraria_dir="$(dirname "$(dirname "$(realpath $0)")")"
world_file=`find "$terraria_dir/terraria-server" -type f -name "*.wld"` 

cp "$world_file" "$terraria_dir/Worlds"