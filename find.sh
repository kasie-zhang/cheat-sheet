#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Find files
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Find by name
#------------------------------
find /path -name "*.mp3" 

#------------------------------
# Find by name (Case-insensitive)
#------------------------------
find /path -iname "filename"

#------------------------------
# Find by specific depth
#------------------------------
find /path -mindepth 0 -maxdepth 2 -name "*.txt"

#------------------------------
# Find exclude specific directory (prune is a condition filter)
#------------------------------
find /home/user -path /home/user/tmp -prune -o -name "*.log" -print

#------------------------------
# Find by size (k, M, G)
#------------------------------
find /path -size +100M -size -2G

#------------------------------
# Find recently accessed file (read)
# -amin: 1 minute
# -atime: 1 day
#------------------------------
find /path -atime +7 -atime -14

#------------------------------
# Find by last modified time (edit)
# -mmin: 1 minute
# -mtime: 1 day
#------------------------------
find /path -mtime +7 -mtime -14

#------------------------------
# Find by last changed time (edit, permission, ownership change)
# -cmin: 1 minute
# -ctime: 1 day
#------------------------------
find /path -ctime +7 -ctime -14

#------------------------------
# Find by permissions
#------------------------------
find /path -perm 755

#------------------------------
# Find by type
# f - file
# d - directory
# l - symbolic link
#------------------------------
find /path -type f

#------------------------------
# Find empty file
#------------------------------
find /path -empty

#------------------------------
# Find by user / user id
#------------------------------
find /path -user kasie
find /path -uid 1000

#------------------------------
# Find by group / group id
#------------------------------
find /path -group kasie
find /path -gid 1000

#------------------------------
# Find by multiple conditions (use () to group conditions)
#------------------------------
find /path \( -name "*.txt" -o -name "*.jpg" \) -a -size +1M

#------------------------------
# Find using regex
#------------------------------
find /path -regex ".*\.\(log\|txt\)"




#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Actions
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Find and delete
#------------------------------
find /path -name "*.tmp" -delete 

#------------------------------
# Find and execute command
#------------------------------
find /path -name "*.tmp" -exec command {} \;

#------------------------------
# Find and execute command using xargs
#------------------------------
find /path -name "*.tmp" | xargs rm
