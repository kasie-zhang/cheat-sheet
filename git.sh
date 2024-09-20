#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Git
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Init
#------------------------------
git init                                                # Create new repo
git clone https://github.com/kasie-zhang/jax.git        # Clone an existing repo

#------------------------------
# Remote Config
#------------------------------
git remote -v                           # Show remote info
git remote add <short_name> <url>       # Add remote repository
git remote show origin                  # See more infomation about a particular remote
git remote rename <old_name> <new_name> # Rename remote
git remote remove <name>                # Remove remote

#------------------------------
# Fetch / Pull
#------------------------------
git fetch remote

#------------------------------
# Tagging
#------------------------------
# Create tag
git tag v1.0                            # Create a lightweight tag
git tag -a <tag_name> -m "Version 1.0"        # Create an annotated tag
git tag -a <tag_name> <checksum>              # Tagging past commits
# Show tag info
git tag                                 # Show all tags
git tag -l "pattern"                    # Show matched tags
git show <tag_name>                     # Show tag data
# Delete tag
git tag -d <tag_name>                   # Delete the local tag
git push origin --delete <tag_name>     # Delete the remote tag


#------------------------------
# Edit
#------------------------------
git rm file                     # Remove file in disk and stage it for next commit
git rm --cached file            # Keep file in disk, remove from repository, ignore it in future

#------------------------------
# Stage
#------------------------------
git add file                    # Add file to staging area, prepare for next commit
git restore --staged file       # Unstage a file, keeping the changes
git restore file                # Discard unstaged parts in a local file

#------------------------------
# Commit
#------------------------------
git commit                      # Commit in editor
git commit -m "xxx"             # Commit inline
git commit --amend              # Redo commit

#------------------------------
# Push
#------------------------------
git push <remote> master
# Add tag
git push <remote> <tag_name>      # Transfer a tag to the remote server
git push <remote> --tags          # Transfer all your tags to the remote server
# Delete tag
git push origin --delete <tag_name>  # Delete the remote tag


#------------------------------
# Check Status
#------------------------------
git status                      # Checking status of your files
git diff                        # See unstaged changes
git diff --staged               # See staged changes

#------------------------------
# Branch
#------------------------------


#------------------------------
# Search Commit History
#------------------------------
git log                         # Viewing the commit history
git log -p                      # Show commit patches
git log -2                      # Show latest two commits
# Show commits during a period
git log --since="2024-10-10 10:10"  --until="2024-11-11 10:10"
git log --since=20.hours
git log --since="yesterday"
git log --since="20 hours ago"
# Show commits by author
git log --author "kasie"
# Search commits with grep
git log --grep "pattern"
# Find commits that modified a specific code snippet
git log -S 'return 0;'
# Show commits by file
git log -- /path/to/file
