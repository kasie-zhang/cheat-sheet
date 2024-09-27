#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Wget
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Download
#------------------------------
# HTTP
wget url                        # Download a file
wget -c url                     # Resume download
wget -b url                     # Background download
wget -q url                     # Keep quiet
wget -N url                     # Download only newer files
# FTP
wget --ftp-user=NAME --ftp-password=PASSWORD ftp://xxx
# Multiple files
wget -i url_list.txt                    # Download from url list
wget https://x.com/images/{1..50}.jpg   # Download numbered files
# Recursive download
wget -r url
wget -r -A "*.pdf" url
wget --wait=5 -r url                    # Set a delay between downloads
# Mirror a site
wget -mkp url

#------------------------------
# Options
#------------------------------
# Speed Limit
wget --limit-rate=200k url      # Download speed limit
# Rerty Attempts
wget -t 100 url                 # Set retry attempts
# Directory
wget -P /dir url
# Filename
wget -o file.txt url
# Standard Output
wget -q -O - https://xxx.com/z.tar.gz | tar -zxvf - -C ~/xxx
# User Agent
wget --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36" url
# Cookie
wget --load-cookies cookies.txt http://example.com/
# Header
wget --header="Authorization: Bearer token" http://example.com/api/data
# Ignore Certificate Error
wget --no-check-certificate https://example.com/file.txt
# Download using IPV4 or IPV6
wget -4 http://example.com/file.txt  # IPv4
wget -6 http://example.com/file.txt  # IPv6
# Follow Redirects
wget --max-redirect=10 https://example.com
