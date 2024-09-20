#!/bin/bash

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Search
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Basic Search
#------------------------------
grep "word" filename.txt

#------------------------------
# Search in multiple files
#------------------------------
grep "word" file1.txt file2.txt

#------------------------------
# Search for whole word. (match "word", but not "sword")
#------------------------------
grep -w "word" filename.txt

#------------------------------
# Search for whole line
#------------------------------
grep -x "exact line" filename.txt

#------------------------------
# Ignore Case
#------------------------------
grep -i "Word" filename.txt

#------------------------------
# Recursively Search with specific file extensions
#------------------------------
grep -r "pattern" --include="*.txt" /path/to/directory

#------------------------------
# Pattern Search (OR)
#------------------------------
grep -e "pattern1" -e "pattern2" filename.txt

#------------------------------
# Using extended regular expressions
#------------------------------
grep -E "pattern1|pattern2" filename.txt

#------------------------------
# Exclude pattern (Invert)
#------------------------------
grep -v "pattern" filename.txt

#------------------------------
# Search in compressed file
#------------------------------
grep "pattern" file.gz

#------------------------------
# Exclude certain file
#------------------------------
grep --exclue=*.log "word" /path/to/search




#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Show
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Highlight search
#------------------------------
grep --color=always "pattern" filename.txt

#------------------------------
# Show filename for each match
#------------------------------
grep -H "pattern" filename.txt

#------------------------------
# Line Number
#------------------------------
grep -n "word" filename.txt

#------------------------------
# Totally Matched
#------------------------------
grep -c "word" filename.txt

#------------------------------
# Show only matching part
#------------------------------
grep -o "pattern" filename.txt

#------------------------------
# Show matching files (Not Content)
#------------------------------
grep -l "pattern" *.txt

#------------------------------
# Show non-matching files
#------------------------------
grep -L "pattern" *.txt

#------------------------------
# Show context around match
#------------------------------
grep -C 3 "word" filename.txt
