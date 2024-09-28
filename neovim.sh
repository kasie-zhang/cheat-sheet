#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Buffer (Files in RAM)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:e /path/to/file.txt            # Read a file into a buffer
:e!                             # Reload current buffer, discarding any changes
:w                              # Save current buffer
:ls                             # List buffers
:ls!                            # List buffers (include unlisted, scratch buffer)
:b <number|name>                # Switch to a buffer
:bd <blank|number|name>         # Delete a buffer
:bd! <blank|number|name>        # Force deletion a buffer without saving changes
:bn                             # Next buffer
:bp                             # Previous buffer
:b#                             # Switch to the alternate buffer (last used buffer)
:setlocal                       # Apply settings for the current buffer

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# File Explorer (nvim-tree)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Open / Close
<leader>ee                      # Toggle file explorer
<leader>ef                      # Toogle file explorer (cursor locate on current file)
<leader>ec                      # Collapse nvim-tree recursively
q                               # Close nvim-tree window
# Filter / Search
f                               # Start filter
F                               # Clear filter
H                               # Toggle filter: Dotfiles
I                               # Toggle filter: Git ignore
M                               # Toggle filter: Bookmark
# File 
a                               # Create a file or directory (end with /)
c                               # Copy file
x                               # Cut file
p                               # Paste file
r                               # Rename file
e                               # Rename basename (xxx.sh -> xxx)
ge                              # Copy basename
gy                              # Copy filename
ga                              # Copy absolute path
s                               # Open a file with horizontal split
v                               # Open a file with vertical split
d                               # Trash
D                               # Delete
<CR>                            # Open
m                               # Toggle bookmark
# Move
Ctrl + j                        # Next sibling (same level)
Ctrl + k                        # Previous sibling (same level)
j                               # Move down
k                               # Move up
J                               # Last sibling
K                               # First sibling
P                               # Parent directory
>                               # CD
<                               # Change root to parent
Tab                             # Open preview / Toggle directory / !CD
[c / ]c                         # Prev / Next git (change)
# Show
Ctrl + i                        # Show file info
?                               # Show help
E                               # Expand all
C                               # Collapse all
R                               # Refresh




#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Navigation
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Quickfix List
# Next Function
# Next debug point
# Go to line head / end
# Go to next {
#------------------------------
# Mark (mark.nvim)
#------------------------------
mj                              # Set local mark j
mJ                              # Set global mark J (accessible across files)
m,                              # Set next available alpabetical (lowercase) mark
m;                              # Toggle the next available mark at the current line
dmj                             # Delete mark j
dm-                             # Delete all marks in the current line
dm<space>                       # Delete all marks in the current buffer
m:                              # Preview mark (work across files)
m]                              # Move to next mark
m[                              # Move to previous mark

m[0-9]                          # Add a bookmark to bookmark group[0-9]
dm.                             # Delete the bookmark grop in current line
dm[0-9]                         # Delete all bookmarks from bookmark group[0-9]
m{                              # Move to next bookmark in same group (work across buffers)
m}                              # Move to previous bookmark in same group (work across buffers)

'j                            ' # Jump to the exact position of mark j
:marks                          # List marks

#------------------------------
# 
#------------------------------


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search file, search text

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Manipulate Text (Motion, Text Objects)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Split
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:vsp <filename>                 # Open a file in a vertical split
:sp <filename>                  # Open a file in a horizontal split
:q                              # Close current split (without closing the buffer)
:q!                             # Close current split and discard unsaved changes
:only                           # Close all other splits except the current one
leader + h/j/k/l                # Move to the left/down/up/right split

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Micro
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Session
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Register
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Built-In Terminal
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Themes and Status Lines
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Language Server Protocol
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
