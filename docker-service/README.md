# Docker Service install

- nginx proxy
```
wget https://raw.githubusercontent.com/cenzwong/cenz-cmd-install/master/docker-service/nginxproxymanager/docker-compose.yaml | docker-compose up -d
# visit http://192.168.0.10:81/login
# admin@example.com/changeme
```
- code-server


# install docker if docker.sock not found
```
sudo chmod 666 /var/run/docker.sock

```
