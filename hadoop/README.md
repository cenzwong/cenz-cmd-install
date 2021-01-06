# install Hadoop

https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/SingleCluster.html#Installing_Software

###### command ######
bin/hdfs namenode -format
sbin/start-dfs.sh
bin/hdfs dfs -mkdir /user
bin/hdfs dfs -put src/*.xml hdfs
bin/hdfs dfs -get output output
bin/hdfs dfs -cat output/*
sbin/stop-dfs.sh
######
http://172.16.11.29:9864/webhdfs/v1/user/hadoopsingle/input/data.txt?op=OPEN&namenoderpcaddress=localhost:9000&offset=0
