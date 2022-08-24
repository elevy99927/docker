docker ps  | awk '{print "docker kill  "$1}' |sh

docker rm -f $(docker ps -qa)
