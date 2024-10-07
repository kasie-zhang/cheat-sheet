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
m,                              # Toggle the next available mark at the current line
dmj                             # Delete mark j
dm<space>                       # Delete all marks in the current buffer
m:                              # Preview mark (work across files)
m]/m[                           # Move to next/previous mark
m[0-9]                          # Add a bookmark to bookmark group[0-9]
dm.                             # Delete digit bookmark in current line
dm[0-9]                         # Delete all bookmarks from bookmark group[0-9]
m{                              # Move to next bookmark in same group (work across buffers)
m}                              # Move to previous bookmark in same group (work across buffers)
'j                            ' # Jump to the exact position of mark j
:marks/<leader>fm               # List marks

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Edit
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
i/I                             # Enter insert mode bofore or at the beginning of the line
a/A                             # Append text after the cursor or at the end of the line
x                               # Delete a character
dw/`d$`/dG                      # Delete a word / to the end of the line / to the end of the file
cw/C                            # Change a word / to the end of the line
D                               # Delete to the end of the line
Y                               # Yank the entire line
u/Ctrl-r                        # Undo and redo
v/V/Ctrl-v                      # Enter visual mode / Select entire line / Column selection
.                               # Repeat the last action


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Navigation
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Basic
h/j/k/l                         # Move left/down/up/right
# Word
w/b                             # Start of the next/previous word
e/ge                            # End of the next/previous word
# Line
<leader>a/d                     # Move to line head/end
^/g_                            # Move to line head/end (non-blank)
f/F<char>                       # Move to the next/previous occurrence of a character in the line
t/T<char>                       # Like f/F<char>, but leave one character
# Screen
H/M/L                           # Move to the top/middle/bottom of the screen
zz                              # Center the current line in the window
s<char>
# Position
Ctrl-i/o                        # Jump to the next/previous location
# Paragraph
{/}                             # Move to the previous/next paragraph
# Section
[[/]]                           # Jump to the previous/next section
# Sentence
(/)                             # Jump to the beginning of the next/previous sentence
# File
gg/G                            # Go to the first/last line of the file
:linenumber / <number>G         # Go to the specified line number
# Miscellaneous
%                               # Jump to the matching paretheses or brace


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
# 8. Assignment(a)              - il, ir, ia, aa (left side, right side, inner, outer)
# 9. Condition(c)               - ic, ac
# 10. Function(f)               - if, af
# 11. Call(k)                   - ik, ak
# 12. Class(j)                  - ij, aj (j means java)
# 13. Loop(o)                   - io, ao
# 14. Parameter(x)              - ix, ax (x means parameter)
# 15. Return(e)                 - ie, ae
# 16. Number(u)                 - iu


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# File Explorer (nvim-tree)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Open
<leader>ee                      # Toggle file explorer
<leader>ef                      # Toogle file explorer (cursor locate on current file)
<leader>ec                      # Collapse nvim-tree recursively
# Filter / Search
f/F                             # Start/Clear filter
H/I/M                           # Toggle filter: Dotfiles/Git Ignore/Bookmark
# File 
a                               # Create a file or directory (end with /)
c/x/p                           # Copy/Cut/Paste file
r/e                             # Rename file/basename(xxx.sh -> xxx)
ge/y                            # Copy basename/filename
Y/gy                            # Copy relative/absolute path
s/v                             # Open a file with horizontal/vertical split
d/D                             # Trash/Delete
<CR>                            # Open
m                               # Toggle bookmark
# Move
Ctrl-j/k                        # Next/Previous sibling (same level)
j/k                             # Move down/up
J/K                             # Last/First sibling
P                               # Parent directory
>/<                             # CD / Change root to parent
Tab                             # Open preview / Toggle directory / !CD
[c/]c                           # Prev / Next git (change)
# Show
Ctrl-i                          # Show file info
q                               # Quit
?                               # Show help
E/C                             # Expand/Collapse all
R                               # Refresh




# Quickfix List
# Next Function
# Next debug point
# Go to line head / end
# Go to next {



#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Vim Search
/pattern                        # Search forward
?pattern                        # Search backward
n/N                             # Repeat the last search in the same/opposite direction
<leader>nh                      # Turn all Highlighting

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Telescope
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search
<leader>fa                      # Fuzzy find string in current buffer
<leader>fc                      # Fuzzy find to-do comments
<leader>fd                      # Jump to function definition
<leader>fp                      # Peek function definition
<leader>ff                      # Fuzzy find files in cwd
<leader>fi                      # Fuzzy find files in cwd, respecty .gitignore
<leader>fs                      # Find string in cwd
<leader>fw                      # Find word under cursor in cwd
<leader>fo                      # Fuzzy find opened files
<leader>ft                      # Find to-do comments
<leader>fx                      # Fuzzy find executed vim commands
<leader>fm                      # Fuzzy find marks
<leader>fq                      # Fuzzy find quickfix list
<leader>fl                      # Fuzzy find local list
<leader>fr                      # Fuzzy find registers
<leader>fj                      # Fuzzy find jumplist
<leader>fk                      # Fuzzy find normal keymaps
<leader>ft                      # Fuzzy find function names, variables from treesitter


# Actions
Ctrl-j/k                        # Next/previous (insert mode)
j/k                             # Next/previous (normal mode)
H/M/L                           # Select High/Middle/Low (normal mode)
gg/G                            # Select the first/last item (normal mode)
Ctrl-s/v                        # Go to file as a horizontal/vertical split
Ctrl-u/d                        # Scroll up/down in preview window
Ctrl-c/ESC                      # Close telescope (insert/normal mode)
TAB/Shift-TAB                   # Toggle selection and move to next/previous selection
Ctrl-q/l                        # Send selected item to quickfixlist/localist

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# TODO Comment
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# TODO: Tasks that need to be completed
# FIXME: Code that require fixing or improvement
# NOTE: Additional information or context for future reference
# XXX: Potentially problemmatic or dirty code that need attention
# HACK: A workaround or non-standard solution
# OPTIMIZE: Suggests areas where performance improvements can be made
# SLOW: Flags setions of code that may be slow or inefficient
# DEBUG: Marks sections of code used for debugging purposes
# WIP: Working in progress
]t                              # Jump to next todo-comment
[t                              # Jump to previous todo-comment


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Split
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:vsp <filename>                 # Open a file in a vertical split
:sp <filename>                  # Open a file in a horizontal split
:q                              # Close current split (without closing the buffer)
:q!                             # Close current split and discard unsaved changes
:only                           # Close all other splits except the current one
Ctrl-h/j/k/l                    # Move to the left/down/up/right split
