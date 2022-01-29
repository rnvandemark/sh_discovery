# this file should be sourced
if [[ "-s" == "$1" ]]; then
    # -s option means the discovery server is hosted on the same host
    DISCOVERY_IP="$(hostname -I | awk '{ print $1 }')"
else
    # by default, get the IP of the hostname expected to host the discovery server
    # the hostname of the machine hosting the server can be overridden
    DISCOVERY_IP="$(getent hosts ${SERVER_HOSTNAME:-nick-asus-x205t} | awk '{ print $1 }')"
fi
# export the env variable used to make the node a participant to the discovery server
export ROS_DISCOVERY_SERVER="$DISCOVERY_IP:${DISCOVERY_PORT:-11811}"
