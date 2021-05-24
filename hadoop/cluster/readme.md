# Hadoop Cluster

- https://www.apache.org/dyn/closer.cgi/hadoop/common/hadoop-3.2.2/hadoop-3.2.2.tar.gz

Supported Java Versions
Apache Hadoop 3.3 and upper supports Java 8 and Java 11 (runtime only)
Please compile Hadoop with Java 8. Compiling Hadoop with Java 11 is not supported:  HADOOP-16795 - Java 11 compile support OPEN
Apache Hadoop from 3.0.x to 3.2.x now supports only Java 8
Apache Hadoop from 2.7.x to 2.10.x support both Java 7 and 8

```
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install ssh -y
sudo apt-get install pdsh -y
echo "ssh" | sudo tee /etc/pdsh/rcmd_default # config the default to ssh
sudo apt install openjdk-11-jre-headless -y 
sudo apt install openjdk-11-jdk-headless -y
```

```
rm hadoop -r
wget https://mirror-hk.koddos.net/apache/hadoop/common/hadoop-3.2.2/hadoop-3.2.2.tar.gz
wget https://apache.website-solution.net/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz
tar xf hadoop-*.tar.gz
sudo mv hadoop-3.3.0 hadoop
```
```
#adding pathh
sudoedit /etc/environment
source /etc/environment

find /usr/lib/jvm/java-1.x.x-openjdk
# JAVA_HOME 
readlink -f /usr/bin/javac | sed "s:/bin/javac::"
# set to the root of your Java installation
  export JAVA_HOME=/usr/java/latest
  
```

# setting up cluster

– Update ~/hadoop/etc/hadoop/core-site.xml:
```
<configuration>
  <property>
    <name>fs.default.name</name>
    <value>hdfs://(master node):9000</value>
  </property>
</configuration>
```
- Edit hdfs-site.xml:
```
<configuration>
  <property>
    <name>dfs.namenode.name.dir</name>
    <value>/home/yike/data/nameNode</value>
  </property>
  <property>
    <name>dfs.datanode.data.dir</name>
    <value>/home/yike/data/dataNode</value>
  </property>
  <property>
    <name>dfs.replication</name>
    <value>1</value>
  </property>
  <property>
    <name>dfs.namenode.datanode.registration.ip-hostname-check</name>
    <value>false</value>
  </property>
</configuration>
```
- Edit workers:
```
vm1
vm2
#or
ip1
ip2
```
# hadling the keys
```
ssh-keygen -b 4096
ssh-copy-id -i ~/.ssh/id_rsa.pub admin@192.16.10.90 # including yourself
ssh-copy-id -i ~/.ssh/id_rsa.pub admin@192.16.10.91
ssh-copy-id -i ~/.ssh/id_rsa.pub admin@192.16.10.92
```
- copy to other vm: ```scp ~/hadoop/etc/hadoop/* vm2:~/hadoop/etc/hadoop/ ```
## installing HDFS
```
# format HDFS
hdfs namenode 
hdfs namenode -format

# start an dstop hdfs
start-dfs.sh
stop-dfs.sh
```
