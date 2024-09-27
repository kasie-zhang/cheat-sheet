#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# CURL
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Headers
#------------------------------
# Add Custom Headers
curl -H "X-Custom-Header: value" \
    https://api.example.com/data
# View Response Headers
curl -I https://api.example.com

#------------------------------
# Redirects and Cookies
#------------------------------
# Follow Redirects
curl -L https://example.com
# Manage Cookies
curl -c cookie.txt -b cookies.txt https://example.com   # -c (Save cookie after operation) -b (Use cookie from file or string)

#------------------------------
# Download File
#------------------------------
# Save as remote name
curl -O http://example.com/file.txt
# Save with specific name
curl -o file.txt https://example.com/file.txt
# Save to stdout
curl https://example.com/file.txt | bat
# Resume and interupted downlaod
curl -C - -O https://example.com/largefile.zip
# Limit download speed
curl --limit-rate 100K -O https://example.com/largefile.zip 


#------------------------------
# Upload File
#------------------------------
curl -X POST -F "file=@/path/to/file.txt" \
    https://api.example.com/upload

#------------------------------
# Request
#------------------------------
# GET
curl https://api.example.com/data
curl -v https://api.example.com/data             # Verbose mode
curl https://v1.hitokoto.cn/ | jq .              # Pretty print JSON response
# POST
curl -X POST -d "param1=value1&param2=value2" \
    https://api.example.com/submit
# POST with JSON
curl -x POST -H "Content-Type: application/json" \
    -d '{"key":"value"}' \
    https:api.example.com/submit
# POST URL-encoded Data
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" \
    -d "param1=value1&param2=value2" \
    https://api.example.com/submit
# PUT
curl -X PUT -d "param1=value1&param2=value2" \
    https://api.example.com/submit

#------------------------------
# Authentication
#------------------------------
# Basic
curl -u username:password https://api.example.com/protected
# Token
curl -H "Authorization: Bearer your_token" \
    https://api.example.com/protected

#------------------------------
# Timeouts and Retry
#------------------------------
# Set a Timeout
curl --max-time 10 https://example.com
# Set Connection Timeout
curl --connec-timeout 5 https://example.com
# Retry on Failure
curl --retry 3 https://example.com

#------------------------------
# User-Agent
#------------------------------
curl -A "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36" \
    https://api.example.com


#------------------------------
# Using Proxy
#------------------------------
curl -x http://127.0.0.1:7890 https://api.example.com

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Show Response
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Show Real URL after Redirection
curl -o /dev/null -s -L -w "%{url_effective}\n" gooto.cc/clash
#------------------------------
# General Variables
#------------------------------
# %{url_effective}      - The effective URL after redirects.
# %{http_code}          - The HTTP response code.
# %{http_version}       - The HTTP version used.
# %{time_total}         - Total time for the request.
# %{time_namelookup}    - Time spent on name lookup.
# %{time_connect}       - Time spent establishing a connection.
# %{time_appconnect}    - Time spent on SSL handshake.
# %{time_pretransfer}   - Time from start until just before transfer starts.
# %{time_starttransfer} - Time until the first byte is received.

#------------------------------
# Connection Variables
#------------------------------
# %{num_connects}       - Number of new connections made.
# %{num_redirects}      - Number of redirects followed.

#------------------------------
# Size Variables
#------------------------------
# %{size_download}      - Total bytes downloaded.
# %{size_upload}        - Total bytes uploaded

#------------------------------
# Speed Variables
#------------------------------
# %{speed_download}     - Average download speed.
# %{speed_upload}       - Average upload speed.

#------------------------------
# Miscellaneous Variables
#------------------------------
# %{content_type}       - The Content-Type of the response.
# %{filename_effective} - The effective filename used for a download.
# %{redirect_url}       - The URL that was redirected to.

# Example
curl -o /dev/null -s -L -w \
    "Redirect URL: %{url_effective}\n\
Response code: %{http_code}\n\
HTTP version: %{http_version}\n\
Time total: %{time_total}\n\
DNS lookup time: %{time_namelookup}\n\
Establish a connection time: %{time_connect}\n\
SSL handshake time: %{time_appconnect}\n\
Time from start until just before transfer: %{time_pretransfer}\n\
Time until the first byte is received: %{time_starttransfer}\n\
Number of new connections made: %{num_connects}\n\
Number of redirects followed: %{num_redirects}\n\
Total bytes downloaded: %{size_download}\n\
Total bytes uploaded: %{size_upload}\n\
Average download speed: %{speed_download}\n\
Average upload speed: %{speed_upload}\n\
Content-Type of the response: %{content_type}\n\
Effective filename: %{filename_effective}\n" gooto.cc/clash
