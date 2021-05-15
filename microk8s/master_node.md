# Master setup
```
sudo snap install microk8s --classic

sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
su - $USER

microk8s status --wait-ready

microk8s enable dashboard dns registry istio metallb storage

microk8s kubectl get all --all-namespaces

microk8s dashboard-proxy ((THis only works localhost)

microk8s add-node
```


# Node setup
```
sudo snap install microk8s --classic
```
