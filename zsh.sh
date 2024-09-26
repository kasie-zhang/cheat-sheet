#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Keymaps
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Navigation
#------------------------------
Ctrl + a/e                      # Go to line head / end
Ctrl + f/b                      # Forward / backword one character
Ctrl + l/h                      # Forward / backword one word

#------------------------------
# Edit
#------------------------------
C-x  + C-e                      # Edit the current command in the default editor
Ctrl + t                        # Swap two words (before and after cursor)
Ctrl + y                        # Paste last cutted text (undo the last deletion)
Ctrl + u                        # Undo
Ctrl + o                        # Copy current text in the command line (zsh copybuffer plugin)

#------------------------------
# Delete
#------------------------------
Ctrl + d                        # Delete character under cursor
Ctrl + w                        # Delete the word before the cursor
Ctrl + j/k                      # Delete from the cursor to line head / end
Alt  + l                        # Clear screen

#------------------------------
# History
#------------------------------
Ctrl + p/n                      # Previous / next command
Alt  + .                        # Last argument in previous command

#------------------------------
# Process Management
#------------------------------
Ctrl + c                        # Terminate the current command or process
Ctrl + z                        # Suspend current process
jobs                            # List background jobs
fg %n                           # Bring job number n to the foreground
bg %n                           # Bring job number n to the background




#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Plugins
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Fzf Widget
#------------------------------
Ctrl + r                        # History search
Ctrl + i                        # Fzf complition (same as TAB)
Ctrl + s                        # Fzf search file
Alt  + c                        # Fzf search directory

#------------------------------
# yazi
#------------------------------
yy                              # Open yazi

#------------------------------
# Web Search
#------------------------------
google
bing
yahoo
github
stackoverflow
aur
dockerhub
npmpkg
gopkg
wiki
youtube
reddit
twitter
chatgpt
perplexity
imdb
tmdb
goodreads
deepl
translate                       # Google translate
arxiv
dblp
scholar
acm
ieee
springer
elsevier
map
djava                           # Doc java 21
dpython                         # Doc python
pypi
