#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# SSH
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
#------------------------------
# Basic connection
#------------------------------
ssh user@remote_host -p 2222  # default port is 22


#------------------------------
# Key authentication
#------------------------------
ssh-keygen -t rsa -b 4096
ssh-copy-id user@remote_host

#------------------------------
# Connect with key authentication (if not in the default location)
#------------------------------
ssh -i /path/to/private_key user@remote_host

#------------------------------
# Run command remotely
#------------------------------
ssh user@remote_host 'command'

#------------------------------
# Local port forwarding (remote -> local)
#------------------------------
ssh -L local_port:remote_host:remote_port user@remote_host

#------------------------------
# Remote port forwarding (local -> remote)
#------------------------------
ssh -R remote_port:localhost:local_port user@remote_host

#------------------------------
# Dynamic port forwarding (Proxy)
#------------------------------
ssh -D local_port user@remote_host
