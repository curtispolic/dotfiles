# Curtis Polic dotfiles

Designed to be cloned into a new installation (or via ssh connection) to maintain a consistent environment no matter what device I am working from.

Scripts are aliased in the .zshrc to be run easily. Most of these are designed for me to use at work so will be quite useless to anyone else, but if one person gets use out of it that's great!

## Scripts

- connectionScript: Connects via ssh to the hostname provided as the first (and only) argument. Before the ssh connection, will copy over these dotfiles to /var/root/ of the remote device to ensure consistency of environment. Will spawn a zsh session on connection and delete the copied files on disconnection.

- oneDriveRenamer: When run, will rename all files and directories below where it is in the files structure. Will replace anything that isn't a letter, number, or legal special character into an underscore. This will resolve *most* OneDrive sync issues, but will not resolve folders that have a space at the end of their name, those will have to be resolved manually.