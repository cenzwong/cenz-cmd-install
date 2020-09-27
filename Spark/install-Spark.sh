wget http://ftp.cuhk.edu.hk/pub/packages/apache.org/spark/spark-3.0.1/spark-3.0.1-bin-hadoop3.2.tgz
tar xf spark-x.tgz


java -version
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install openjdk-8-jdk

nano ~/.bashrc
>> export PYSPARK_PYTHON=python3
source ~/.bashrc

cd spark-x
./bin/pyspark
