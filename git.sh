Test for rebase
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
git fetch                               # Fetch updates from current branch's upstream
git fetch --all                         # Fetch all remote upstreams

#------------------------------
# Tagging
#------------------------------
# Create tag
git tag v1.0                            # Create a lightweight tag
git tag -a <tag_name> -m "Version 1.0"  # Create an annotated tag
git tag -a <tag_name> <checksum>        # Tagging past commits
# Show tag info
git tag                                 # Show all tags
git tag -l "pattern"                    # Show matched tags
git show <tag_name>                     # Show tag data
# Delete tag
git tag -d <tag_name>                   # Delete the local tag
git push origin --delete <tag_name>     # Delete the remote tag


#------------------------------
# Branch
#------------------------------
# Create branch
git switch -c <new_branch_name>       # Create and switch to a new branch, upstream is default
git switch -c <new_branch_name> origin/<remote_branch>      # Create and switch to a new branch, upstream is remote_branch
# Set upstream
git branch -u origin/<local_branch_name>    # Set upstream tracking branch for your current local branch
# Switch branch
git switch <branch_name>              # Switch to a different branch
git switch -f <branch_name>           # Switch to a branch and discard local changes
# Change branch name
git branch --move <old_name> <new_name>     # Change branch name
# Delete branch
git branch -d <branch_name>           # Delete local branch
# List branches
git branch                            # List local branches (branch name)
git branch -v                         # List local branches (branch name + last commit)
git branch -vv                        # List local branches (branch name + last commit + upstream)
git branch --merged                   # List branches you have merged into the branch you're current on (Fine to delete)
git branch --no-merged                # List branches you haven't merged into the branch you're current on

#------------------------------
# Rebase
#------------------------------
git rebase --onto <new_base> <old_base> <branch_A/commit_A>     # Change branch_A/commit_A from one parent (old_base) to new_base

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
git restore --source=<branch/commit_checksum> -- file   # Restore a file to a specific commit or branch version 

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
