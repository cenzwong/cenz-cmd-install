echo "reference: https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/SingleCluster.html#Standalone_Operation"

sudo apt update && sudo apt upgrade -y
sudo apt-get install ssh
sudo apt-get install pdsh

# set to the root of your Java installation
export JAVA_HOME=/usr/java/latest
java -version
echo "java -version"
pause

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install openjdk-8-jdk

echo "bin/hadoop"
