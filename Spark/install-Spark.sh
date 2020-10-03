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

# Install Jupyter
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh

bash ./Anaconda3-2020.07-Linux-x86_64.sh
conda config --set auto_activate_base false

conda install jupyter

nano ~/.bashrc
>> export PYSPARK_DRIVER_PYTHON="jupyter"
>> export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
source ~/.bashrc

./bin/pyspark
