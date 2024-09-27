#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Wget
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Download
#------------------------------
# HTTP
wget https://example.com                        # Download a file
wget -c https://example.com                     # Resume download
wget -b https://example.com                     # Background download
wget -q https://example.com                     # Keep quiet
wget -N https://example.com                     # Download only newer files
# FTP
wget --ftp-user=NAME --ftp-password=PASSWORD ftp://xxx
# Multiple files
wget -i urls.txt                                # Download from url list
wget https://example.com/images/{1..50}.jpg     # Download numbered files
# Recursive download
wget -r https://example.com
wget -r -A "*.pdf" https://example.com
wget --wait=5 -r https://example.com            # Set a delay between downloads
# Mirror a site
wget -mkp https://example.com

#------------------------------
# Options
#------------------------------
# Speed Limit
wget --limit-rate=200k https://example.com      # Download speed limit
# Rerty Attempts
wget -t 100 https://example.com                 # Set retry attempts
# Directory
wget -P /dir https://example.com
# Filename
wget -o file.txt https://example.com
# Standard Output
wget -q -O - https://xxx.com/z.tar.gz | tar -zxvf - -C ~/xxx
# User Agent
wget --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36" https://example.com
# Cookie
wget --load-cookies cookies.txt http://example.com
# Header
wget --header="Authorization: Bearer token" http://example.com/api/data
# Ignore Certificate Error
wget --no-check-certificate https://example.com/file.txt
# Download using IPV4 or IPV6
wget -4 http://example.com/file.txt  # IPv4
wget -6 http://example.com/file.txt  # IPv6
# Follow Redirects
wget --max-redirect=10 https://example.com
