#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Rsync
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Copy whole directory to destination
#------------------------------
rsync -avz source_directory user@host:destination_directory

#------------------------------
# Show progress during transfer
#------------------------------
rsync -av --progress source_directory/ destination_directory/

#------------------------------
# Sync directories
#------------------------------
rsync -avz source_directory/ destination_directory/

#------------------------------
# Delete files not present in source
#------------------------------
rsync -avz --delete source_directory/ destination_directory/

#------------------------------
# Exclude specific files
#------------------------------
rsync -avz --exclude="*.log" source_directory/ destination_directory/

#------------------------------
# Dry run
#------------------------------
rsync -avz --dry-run source_directory/ destination_directory/

#------------------------------
# Limit bandwidth (KiB)
#------------------------------
rsync -avz --bwlimit=10240 source_directory/ destination_directory/

#------------------------------
# Resume interrupted transfers
#------------------------------
rsync -avz --partial source_directory/ destination_directory/

#------------------------------
# Using SSH config `~/.ssh/config` to avoid typing user@host
#------------------------------
# Host <myserver>
#     HostName <remote_host_ip_or_domain>
#     User     <user_name>
#     port     22
rsync -avz source_directory/ myserver:destination_directory/
