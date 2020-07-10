# Share Terraria World

## How to Use

1. Before starting the server, run `load.sh` to make sure your local world file is up to date
2. When you are done hosting the server and Terraria has been closed, run `save.sh` to update the remote repository.
3. If your local repository gets in a bad state and you want to revert to the version in github, run the `hard_reset.sh`

## Details

You don't have to read this section unless you are curious.

### Load

This script will pull down the latest version of the world file and copy it into you `Terraria/Worlds` directory.

If you started playing on the world before running the load script, this script will fail. To revert your local version see hard reset. If you want to override the remote version then talk to Jeff.

### Save

This script will detect the name of the world file in this repository and then update it to match the world file of the same name in your `Terraria/Worlds` directory. Afterwards it will commit the change to your local git history and push that change to Github.

If your version of the world file was not up to date with the remote version before you started playing, this command will fail.

### Hard Reset

This script should only be run if you want to ditch your local version and revert to the remote version. It will trash all locally saved/unsaved changes to the world file.
