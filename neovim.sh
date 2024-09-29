#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Buffer (Files in RAM) (I won't use tab, no need to do that)
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
# Mark (mark.nvim)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Motion
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Basic
h / j / k / l                   # Move left / down / up / right 
# Word
w                               # Start of the next word
e                               # End of the next word
b                               # Start of the previous word
ge                              # End of the previous word
# Line
0 / <leader>a                   # Move to line head
^                               # Move to the first non-blank character of the line
$ / <leader>d                   # Move to the line end
g_                              # Move to the last non-blank character of the line
C                               # Change to the end of the line (delete and enter insert mode)
D                               # Delete to the end of the line
Y                               # Yank the entire line
# Screen
H                               # Move to the top of the screen
M                               # Move to the middle of the screen
L                               # Move to the button of the screen
zz                              # Center the current line in the window
# Paragraph
{                               # Move to the previous paragraph
}                               # Move to the next paragraph
# Section
[[                              # Jump to the previous section
]]                              # Jump to the next section
# Sentence
(                               # Jump to the beginning of the next sentence
)                               # Jump to the beginning of the previous sentence
# File
gg                              # Go to the first line of the file
G                               # Go to the last line of the file
:linenumber / <number>G         # Go to the specified line number
# Miscellaneous
%                               # Jump to the matching paretheses or brace
f<char>                         # Jump to the next occurrence of `char` on the current line
F<char>                         # Jump to the previous occurrence of `char` on the current line
t<char>                         # Jump before the next occurrence of `char`
T<char>                         # Jump after the previous occurence of `char`
Ctrl + o                        # Jump to the previous location
Ctrl + i                        # Jump to the next location


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Text Objects      "targets.vim + treesitter-textobject"
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Vim Origin: 
# 1. Word(w)                    - aw, iw
# 2. Sentence(s)                - as, is
# 3. Paragraph(p)               - ap, ip

# Target.vim
# 4. Block(b)   (), [], {}      - Ia, ib, ab, Ab (next/last) e.g., cinb, cilb
# 5. Pair       <>              - I<, i<, a<, A< (next/last)
# 6. Quote(q)   '', "", ``      - Iq, iq, aq, Aq (next/last) e.b., cinq, cilq
# 7. Seperator , . ; : + - = ~ _ * # / | \ & $

# Treesitter
# 8. Assignment(a)              - la, ra, ia, aa (left side, right side, inner, outer)
# 9. Condition(c)               - ic, ac
# 10. Function(f)               - if, af
# 11. Call(m)                   - im, am (m means method)
# 12. Class(j)                  - ij, aj (j means java)
# 13. Loop(o)                   - io, ao
# 14. Parameter(x)              - ix, ax (x means parameter)
# 15. Return(r)                 - ir, ar
# 16. Number(u)                 - iu




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
y                               # Copy filename
Y                               # Copy relative path
gy                              # Copy absolute path
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




# Quickfix List
# Next Function
# Next debug point
# Go to line head / end
# Go to next {



#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search file, search text

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Edit
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
# Language Server Protocol
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
