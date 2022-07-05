
# Also add warning if $HOSTNAME doesn't match a configuration file

Possibilities:

check if configuration file exists, if it doesn't then say it doesn't, but then offer
to run setup.sh --configuration hosts (which I would have to write:-))

Add support to mount an opendrive volume:

# Dependencies Required:

fuse
rclone
screen

# Command needed:

screen -dmS rclone-agent bash -c "rclone mount Aleks-OpenDrive:/Servers/setup/fresh ~/Remote/rclone --vfs-cache-mode writes"

# Making use of Rclone

rclone sync Aleks-OpenDrive:/Servers/setup/fresh/ ~/Remote/rclone/ --progress

# Sending back to OpenDrive using Rclone

rclone sync ~/Remote/rclone/ Aleks-OpenDrive:/Servers/setup/fresh/ --progress
