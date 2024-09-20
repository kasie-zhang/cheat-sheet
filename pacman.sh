#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Pacman
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Update / Upgrade
#------------------------------
sudo pacman -Sy                 # Update package database
sudo pacman -Su                 # Upgrade all packages

#------------------------------
# Search
#------------------------------
pacman -Ss zsh

#------------------------------
# Install
#------------------------------
sudo pacman -S zsh

#------------------------------
# Remove / Downgrade / Clean up
#------------------------------
sudo pacman -R vlc              # Remove a package
sudo pacman -Rns vlc            # Remove a package + configurations + dependencies
sudo pacman -Rns $(pacman -Qdtq) # Remove unused packages
sudo pacman -U /var/cache/pacman/pkg/package_name-version.pkg.tar.zst   # Downgrade a package
sudo pacman -Sc                 # Clean cached packages (keep the latest version of each installed package)
sudo pacman -Scc                # Clean all cached packages

#------------------------------
# Show Infomation
#------------------------------
pacman -Si zsh                  # Show Infomation about a package
pacman -Q                       # List installed packages
pacman -Qe                      # List explicitly installed packages
pacman -Qd                      # List packages installed as dependencies
pacman -Qdt                     # List no longer needed dependencies
pacman -Qu                      # Check for package updates
pacman -Ql zsh                  # List all files installed by a package
pacman -Qo /path/to/files       # Find out which package owns a file
sudo pacman -Qk zsh             # Check package files integrity
