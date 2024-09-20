#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Pgrep
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Basic Search
#------------------------------
pgrep ssh                       # Find PID of process ssh
pgrep -l ssh                    # PID + process name
pgrep -x sshd                   # Exact match
pgrep -u root                   # Search by user
pgrep -g staff                  # Match by group
pgrep -n zsh                    # Show only the newest process
pgrep -o zsh                    # Show only the oldest process
pgrep -f /usr/bin/ssh           # Search with full command line
pgrep -v ssh                    # Invert search
pgrep -c zsh                    # Count matches
pgrep -d ' ' zsh                # Set delimiter
pgrep -i Zsh                    # Ignore case

#------------------------------
# Combine with other commands
#------------------------------
kill $(pgrep zsh)               # Kill processes
