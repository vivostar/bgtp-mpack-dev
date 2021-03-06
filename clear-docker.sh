echo -e "\033[32mRemoving container ambari-server\033[0m"
docker rm -f ambari-server

echo -e "\033[32mRemoving container ambari-agent-01\033[0m"
docker rm -f ambari-agent-01

echo -e "\033[32mRemoving container ambari-agent-02\033[0m"
docker rm -f ambari-agent-02

echo -e "\033[32mRemoving network ambari\033[0m"
docker network rm ambari

# echo -e "\033[32mRemoving image ambari-server:2.7.5\033[0m"
# docker rmi ambari-server:2.7.5

# echo -e "\033[32mRemoving image ambari-agent:2.7.5\033[0m"
# docker rmi ambari-agent:2.7.5