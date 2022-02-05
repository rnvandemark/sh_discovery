# start a discovery server with default values for the smart home
# the server ID can be overridden, otherwise it's 0
# the IP address of the server can be overridden, but is the first IP of this host
# the server port can be overridden, but is 11811 by default
fastdds discovery -i "${SERVER_ID:-0}" -l "${SERVER_IP:-$(hostname -I | awk '{ print $1 }')}" -p "${SERVER_PORT:-11811}" -b
