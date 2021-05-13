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
sudo apt install openjdk-11-jre-headless -y 
```

```
rm hadoop -r
wget https://mirror-hk.koddos.net/apache/hadoop/common/hadoop-3.2.2/hadoop-3.2.2.tar.gz
wget https://apache.website-solution.net/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz
tar xf hadoop-*.tar.gz
sudo mv hadoop-3.3.0 hadoop
```
