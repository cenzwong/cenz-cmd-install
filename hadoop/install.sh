echo "reference: https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/SingleCluster.html#Standalone_Operation"

sudo apt update && sudo apt upgrade -y
sudo apt install openjdk-8-jre-headless openjdk-8-jdk-headless # 8 is needed: https://cwiki.apache.org/confluence/display/HADOOP/Hadoop+Java+Versions
sudo apt install ssh pdsh

# set to the root of your Java installation
export JAVA_HOME=/usr/java/latest
export JAVA_HOME=/ # I don't know it work LOL
java -version
echo "java -version"
pause

#
wget https://mirror-hk.koddos.net/apache/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz
tar -tvf hadoop-3.3.0.tar.gz # tar xzf hadoop-x
echo "bin/hadoop"

# config file
nano etc/hadoop/hadoop-env.sh # add JAVA_HOME variable

# Pseudo-Distributed Operation
etc/hadoop/core-site.xml:
etc/hadoop/hdfs-site.xml:

# follow to setup passphraseless ssh
-- Fail
