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
git fetch                      # Fetch updates from current branch's upstream
git fetch --all                # Fetch all remote upstreams
git pull                       # Fetch the latest chagnes from remote and merge them into your current branch
git pull --rebase              # Fetch the latest changes from remote and reapply your local commits on top of the fetched changes

#------------------------------
# Tagging
#------------------------------
# Create lightweight tag
git tag v1.0                            # Create a lightweight tag
git tag v1.1 <checksum>                 # Create a lightweight tag with past commit (point to commit)
git update-ref refs/tags/v1.0 <checksum>        # Create a lightweight tag
# Create annotated tag
git tag -a <tag_name> -m "Version 1.0"  # Create an annotated tag
git tag -a <tag_name> <checksum> -m "V1.0"       # Tagging past commits (create tag object and point to it)
# Show tag info
git tag                                 # Show all tags
git tag -l "pattern"                    # Show matched tags
git show <tag_name>                     # Show tag data
git describe                            # Show the closest tag to the current commit
# Delete tag
git tag -d <tag_name>                   # Delete the local tag
git push origin --delete <tag_name>     # Delete the remote tag


#------------------------------
# Branch
#------------------------------
# Create branch
git branch <branch>                   # Create a branch
git switch -c <branch>                # Create a branch and switch to it
git switch -c <branch> origin/<remote_branch>   # Create a branch and switch to it, upstream is remote_branch
# Set upstream
git branch -u origin/<local_branch_name>        # Set upstream tracking branch for your current local branch
# Switch branch
git switch <branch>                   # Switch to a different branch
git switch -f <branch>                # Switch to a branch and discard local changes
# Change branch name
git branch --move <old_name> <new_name>         # Change branch name
# Delete branch
git branch -d <branch_name>           # Delete local branch
git push origin --delete <branch>     # Delete remote branch
# List branches
git branch                            # List local branches (branch name)
git branch -v                         # List local branches (branch name + last commit)
git branch -vv                        # List local branches (branch name + last commit + upstream)
git branch --merged                   # List branches you have merged into the branch you're current on (Fine to delete)
git branch --no-merged                # List branches you haven't merged into the branch you're current on

#------------------------------
# Rebase
#------------------------------
# Reapply branch commits on top of latest master commit
git rebase master
# Forget commits from upstream, reapply branch commits on top of the latest new_base commit
git rebase --onto <new_base> <upstream> <branch>

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
git reset --soft HEAD^          # Undo last commit (keep changes), Jump to HEAD^ commit
git cherry-pick <commit>        # Copy a commit from one branch to another
git revert <commit>             # Keep the commit history, and create a new commit to undo the changes

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
git diff                        # <Staging Area> vs. <Working Directory>
git diff --staged               # <Last Commit> vs. <Staging Area>



#------------------------------
# Commit History
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

#------------------------------
# Search
#------------------------------
git grep -n "pattern"          # Search pattern through the files

#------------------------------
# Debug
#------------------------------
git blame -L 10,20 file        # Determine which commit and commiter was resposible for buggy lines

#------------------------------
# Sub Module
#------------------------------
git submodule add <url>        # Add a submodule

#------------------------------
# Bundling
#------------------------------
git bundle create repo.bundle HEAD master   # Package all repo data into a bundle, you can re-create the repo's master branch from it 
git clone repo.bundle repo                  # Clone from the binary file into a directory

#------------------------------
# Git Objects
#------------------------------
git hash-object -w file       # Write the object to the database
git cat-file -p <checksum>    # Preview the content
git cat-file -t <checksum>    # Show the type of a git object

#------------------------------
# Git Reference
#------------------------------
git update-ref refs/heads/test <checksum>       # Update a git reference
git update-ref refs/tags/v1.0 <checksum>        # Create a lightweight tag (point to commit)
git symbolic-ref HEAD                           # Show the value of your HEAD
# Change the branch reference without updating your working directory (Don't use it)
git symbolic-ref HEAD refs/heads/test           # Set the value of your HEAD 

#------------------------------
# Packfile
#------------------------------
# Backup
git bundle create xxx.bundle --all
git clone xxx.bundle repo_name
# Move pack, idx, rev file to `.git/objects/pack` to use it directly
git gc                          # Pack git objects, create .idx, .pack, .rev file, remove all loose files
git repack -a -d --max-pack-size=100M
# Extract pack file and use it
git unpack-objects < xxx.pack   # Extracting git objects to .git/objects directory
# Verify the repository
git fsck
# List
git verify-pack -v xxx.idx      # List objects in a packfile


#------------------------------
# Patch
#------------------------------
# Create a patch
git format-patch -1             # Create patch for last commit
git format-patch 1ds2..HEAD     # Create patches for specific range of commits
git format-patch -1 -o patches/ # Create patch for last commit, set output to patches
git format-patch -1 --signoff   # Add `Signed-off-by: ` in patch file
# Apply patch
git am <patch_file>
git am --continue               # Continue after resolving conflicts
git am --abort                  # Abort the patch application

#------------------------------
# Stash
#------------------------------
git stash                       # Hidden all changes, keep directory clean
git stash apply                 # Restore changes to branch
git statsh drop                 # Remove one stash from stash list
git statsh pop                  # Remove latest stash from stash list, and apply it to directory
git statsh list                 # List all stashes
git statsh show                 # Show the changes in the stash as a diff
git stash branch <new_branch> stash@\{0\}               # Apply stash changes to new branch
