#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# GPG - GNU Privacy Guard
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Generate GPG Keys
#------------------------------
gpg --full-generate-key

#------------------------------
# Edit GPG Keys
#------------------------------
gpg --edit-key <key_id>         # Use blow command inside prompt
passwd                          # Change key passphrase
uid                             # Change user ID (name, email)
adduid                          # Add new user to current key
deluid                          # Delete an existing UID
save                            # Save changes
quit                            # Exit the edit mode

#------------------------------
# Remove GPG Keys
#------------------------------
gpg --delete-key <key_id>           # Delete the public key
gpg --delete-sercret-key <key_id>   # Delete the private key

#------------------------------
# Import keys
#------------------------------
gpg --import public.key             # Import public key
gpg --import private.key            # Import private key

#------------------------------
# Export keys
#------------------------------
gpg --armor --export <email> > public.key               # Export all public keys
gpg --armor --export-secret-keys <email> > private.key  # Export all private keys

#------------------------------
# List GPG Keys
#------------------------------
gpg --list-keys                 # List public keys
gpg --list-secret-keys          # List private keys

#------------------------------
# Usage
#------------------------------
gpg -e -r <recipient_email> file.txt  # Encrypt a file with recipient's GPG public key
gpg -d file.txt.gpg > decrypted.txt   # Decrypt a file with my GPG private key
gpg -s file                           # Sign a file (create a combined file file.gpg)
gpg --detach-sign file                # Sign a file (create a separate signature file file.sig)
gpg --verify file.sig file            # Check the signature of the signed file
git commit -S -m "commit"             # Sign a git commit
