#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# File Explorer (nvim-tree)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
<leader>ee                      # Toggle file explorer
TODO

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
m]                              # Move to next mark
m[                              # Move to previous mark
m:                              # Preview mark

m[0-9]                          # Add a bookmark to bookmark group[0-9]
dm[0-9]                         # Delete all bookmarks from bookmark group[0-9]
m{                              # Move to next bookmark in same group (work across buffers)
m}                              # Move to previous bookmark in same group (work across buffers)
dm.                             # Delete the bookmark under the cursor

:marks                          # List marks
'j                            ' # Jump to line beginning of mark j
`j                              # Jump to the exact position of mark j


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search file, search text

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Manipulate Text (Motion, Text Objects)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

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
# Split
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:vsp <filename>                 # Open a file in a vertical split
:sp <filename>                  # Open a file in a horizontal split
:q                              # Close current split (without closing the buffer)
:q!                             # Close current split and discard unsaved changes
:only                           # Close all other splits except the current one
<leader-h/j/k/l>                # Move to the left/down/up/right split

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
