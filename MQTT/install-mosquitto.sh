echo "This script is used to install MQTT server/broker"
echo "Reference site: https://mosquitto.org/download/"
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt update -y
sudo apt install -y mosquitto
echo "Basic Testing Command: https://telegra.ph/MQTT-Notes-code-07-14"
